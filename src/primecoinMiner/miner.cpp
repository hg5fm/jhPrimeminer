#include"global.h"


#include <time.h>

__declspec( thread ) uint32 proofOfWork_maxChainlength;
__declspec( thread ) uint32 proofOfWork_nonce;
__declspec( thread ) uint32 proofOfWork_multiplier;
__declspec( thread ) uint32 proofOfWork_depth;
__declspec( thread ) uint32 proofOfWork_chainType; // 0 -> Cunningham first kind, 1 -> Cunningham second kind, 2 -> bitwin


// Mine probable prime chain of form: n = h * p# +/- 1
bool MineProbablePrimeChain(CSieveOfEratosthenes** psieve, primecoinBlock_t* block, mpz_class& mpzFixedMultiplier, bool& fNewBlock, unsigned int& nTriedMultiplier, unsigned int& nProbableChainLength, 
							unsigned int& nTests, unsigned int& nPrimesHit, sint32 threadIndex, mpz_class& mpzHash, unsigned int nPrimorialMultiplier)
{

	nProbableChainLength = 0;
	nTests = 0;
	nPrimesHit = 0;
	//if (fNewBlock && *psieve != NULL)
	//{
	//	// Must rebuild the sieve
	////	printf("Must rebuild the sieve\n");
	//	delete *psieve;
	//	*psieve = NULL;
	//}
	fNewBlock = false;

    unsigned int nNewTarget = nTarget > 0 ? nTarget : TargetGetLength(block->nBits);

	//int64 nStart, nCurrent; // microsecond timer
	unsigned int nPrimesToSieve = minerSettings.nPrimesToSieve;
	if (*psieve == NULL)
	{
		// Build sieve
		*psieve = new CSieveOfEratosthenes(nMaxSieveSize, nPrimesToSieve, nSievePercentage, nSieveExtensions, nNewTarget, mpzHash, mpzFixedMultiplier);
		(*psieve)->Weave();
	}
	else
	{
		(*psieve)->Init(nMaxSieveSize, nPrimesToSieve, nSievePercentage, nSieveExtensions, nNewTarget, mpzHash, mpzFixedMultiplier);
		(*psieve)->Weave();
	}

	primeStats.nSieveRounds++;
    primeStats.nCandidateCount += (*psieve)->GetCandidateCount();
	
	mpz_class mpzHashMultiplier = mpzHash * mpzFixedMultiplier;
	mpz_class mpzChainOrigin;

    // Determine the sequence number of the round primorial
    unsigned int nPrimorialSeq = 0;
    while (vPrimes[nPrimorialSeq + 1] <= nPrimorialMultiplier)
        nPrimorialSeq++;

    // Allocate GMP variables for primality tests
    CPrimalityTestParams testParams(block->nBits, nPrimorialSeq);



 // References to test parameters
    unsigned int& nChainLength = testParams.nChainLength;
    unsigned int& nCandidateType = testParams.nCandidateType;

	//nStart = GetTickCount();
	//nCurrent = nStart;

	//uint32 timeStop = GetTickCount() + 25000;
	//int nTries = 0;
	bool multipleShare = false;
	bool sieveRescan = false;
	mpz_class mpzPrevPrimeChainMultiplier = 0;
		
	bool bFullScan = false;
	primeStats.numAllTestedNumbers += minerSettings.nSieveSize;
	while ( (nTests < 7000 || bFullScan ))
	{

		if( block->xptFlags & XPT_WORKBUNDLE_FLAG_INTERRUPTABLE )
		{
			if( block->blockHeight != jhMiner_getCurrentWorkBlockHeight(block->threadIndex) )
				break;
		}


		nTests++;
		if (!(*psieve)->GetNextCandidateMultiplier(nTriedMultiplier, nCandidateType))
		{			
			//if (!sieveRescan && bFullScan)
			//{
			//	//fast rescan for more shares.
			//	(*psieve)->Init(nMaxSieveSize, 100, nSieveExtensions, nNewTarget, mpzHash, mpzFixedMultiplier); // 100%
			//	(*psieve)->Weave();
			//	sieveRescan = true;
			//	continue;
			//}
			//else
			{
				// power tests completed for the sieve
				fNewBlock = true; // notify caller to change nonce
				return false;
			}
		}
				
		mpzChainOrigin = mpzHash * mpzFixedMultiplier * nTriedMultiplier;		
		nChainLength = 0;		

		bool canSubmitAsShare = ProbablePrimeChainTestFast(mpzChainOrigin, testParams);
		nProbableChainLength = testParams.nChainLength;
		sint32 shareDifficultyMajor = 0;

		primeStats.primeChainsFound++;

		if( nProbableChainLength >= proofOfWork_maxChainlength )
		{
			proofOfWork_maxChainlength = nProbableChainLength;
			uint32 powExtension = (*psieve)->GetCandidateExtension();
			proofOfWork_multiplier = nTriedMultiplier >> powExtension;
			proofOfWork_nonce = block->nonce;
			proofOfWork_depth = powExtension;
			//printf("New PoW chain @%d * 2^%d (sieve size: %d)\n", proofOfWork_multiplier, proofOfWork_depth, nMaxSieveSize);
			// get chaintype
			if (nCandidateType == PRIME_CHAIN_CUNNINGHAM1)
				proofOfWork_chainType = 0; // Cunningham first kind
			else if (nCandidateType == PRIME_CHAIN_CUNNINGHAM2)
				proofOfWork_chainType = 1; // Cunningham first kind
			else
				proofOfWork_chainType = 2; // bitwin chain
		}

		if( nProbableChainLength >= 0x03000000 )
		{
			shareDifficultyMajor = (sint32)(nChainLength>>24);
		}
			
		if (shareDifficultyMajor >= 3)
		{				
			if (!sieveRescan)
			{				
				primeStats.chainCounter[shareDifficultyMajor]++;
				if (shareDifficultyMajor == 4) // auto adjust nPrimorialMultiplier based on 4diff shares - should be 6+ but then the adjustment would be painfully slow.
					primeStats.nChainHit++;
			}
			// do a 100% rescan of the sieve for higer shares
			if (shareDifficultyMajor >= 6 && nSievePercentage < 66)
			{
				bFullScan = true;
			}
		}
		//if( nProbableChainLength > 0x03000000 )
		//	primeStats.qualityPrimesFound++;
		if( nProbableChainLength > primeStats.bestPrimeChainDifficulty )
			primeStats.bestPrimeChainDifficulty = nProbableChainLength;
		
		if(nProbableChainLength >= block->nBitsForShare)
		{
			block->mpzPrimeChainMultiplier = mpzFixedMultiplier * nTriedMultiplier;
			
			//if (multipleShare && multiplierSet.find(block->mpzPrimeChainMultiplier) != multiplierSet.end())
			//	continue;
			
			if (sieveRescan)
				primeStats.chainCounter[shareDifficultyMajor]++;  // count the chains also on rescan
			
			// generate block raw data
			uint8 blockRawData[256] = {0};
			memcpy(blockRawData, block, 80);
			uint32 writeIndex = 80;
			sint32 lengthBN = 0;
			CBigNum bnPrimeChainMultiplier;
			bnPrimeChainMultiplier.SetHex(block->mpzPrimeChainMultiplier.get_str(16));
			std::vector<unsigned char> bnSerializeData = bnPrimeChainMultiplier.getvch();
			lengthBN = bnSerializeData.size();
			*(uint8*)(blockRawData+writeIndex) = (uint8)lengthBN; // varInt (we assume it always has a size low enough for 1 byte)
			writeIndex += 1;
			memcpy(blockRawData+writeIndex, &bnSerializeData[0], lengthBN);
			writeIndex += lengthBN;	
			// switch endianness
			for(uint32 f=0; f<256/4; f++)
			{
				*(uint32*)(blockRawData+f*4) = _swapEndianessU32(*(uint32*)(blockRawData+f*4));
			}
			time_t now = time(0);
			struct tm * timeinfo;
			timeinfo = localtime (&now);
			char sNow [80];
			strftime (sNow, 80, "%x - %X",timeinfo);

			//float shareValue = GetValueOfShareMajor( shareDifficultyMajor);
			float shareDiff = GetChainDifficulty(nProbableChainLength);

			printf("%s - SHARE FOUND !!! (Th#: %u) ---  DIFF: %f", sNow, threadIndex, shareDiff);
			if(shareDifficultyMajor >= 6)
				printf("    >%u\n", shareDifficultyMajor);
			else
				printf("\n");

			// submit this share
			if (jhMiner_pushShare_primecoin(blockRawData, block))
				primeStats.foundShareCount ++;
			multiplierSet.insert(block->mpzPrimeChainMultiplier);			
			//primeStats.fShareValue += shareValue;
			//primeStats.fBlockShareValue += shareValue;
			RtlZeroMemory(blockRawData, 256);
			multipleShare = true;
		}
		//nCurrent = GetTickCount();
	}
	//if( *psieve )
	//{
	//	delete *psieve;
	//	*psieve = NULL;
	//}

	return false; // stop as timed out
}

std::set<mpz_class> multiplierSet;

bool BitcoinMiner(primecoinBlock_t* primecoinBlock, sint32 threadIndex)
{
	//printf("PrimecoinMiner started\n");
	//SetThreadPriority(THREAD_PRIORITY_LOWEST);
	//RenameThread("primecoin-miner");
	if( pctx == NULL )
		pctx = BN_CTX_new();

	unsigned int nExtraNonce = 0;

	static const unsigned int nPrimorialHashFactor = 7;
	const unsigned int nPrimorialMultiplierStart = 61;   
	const unsigned int nPrimorialMultiplierMax = 79;

	unsigned int nPrimorialMultiplier = primecoinBlock->fixedPrimorial;
	int64 nTimeExpected = 0;   // time expected to prime chain (micro-second)
	int64 nTimeExpectedPrev = 0; // time expected to prime chain last time
	bool fIncrementPrimorial = true; // increase or decrease primorial factor
	int64 nSieveGenTime = 0;
	

	CSieveOfEratosthenes* psieve = NULL;

	//primecoinBlock->nonce = 0;
	//TODO: check this if it makes sense
	if( primecoinBlock->xptMode == false )
		primecoinBlock->nonce = 0x00010000 * threadIndex;
	else
		primecoinBlock->nonce = primecoinBlock->nonceMin;

	unsigned int nHashFactor;
	if( primecoinBlock->fixedHashFactor )
		nHashFactor = PrimorialFast(primecoinBlock->fixedHashFactor);
	else
		nHashFactor = 0;

	// start proof of work generation
	uint32 nSieveSize = max(primecoinBlock->sievesizeMin, min(primecoinBlock->sievesizeMax, minerSettings.nSieveSize));
	uint32 nPrimesToSieve = max(primecoinBlock->primesToSieveMin, min(primecoinBlock->primesToSieveMax, minerSettings.nPrimesToSieve));
	jhMiner_primecoinBeginProofOfWork(primecoinBlock->merkleRoot, primecoinBlock->prevBlockHash, nSieveSize, nPrimesToSieve, primecoinBlock->timestamp);
	
	// reset proof of work hash
	proofOfWork_maxChainlength = 0;
	uint32 numberOfProcessedSieves = 0;

	//uint32 nCurrentTick;
	//while( nCurrentTick < nTime && primecoinBlock->serverData.blockHeight == jhMiner_getCurrentWorkBlockHeight(primecoinBlock->threadIndex) )
	mpz_class mpzPrimorial;
	Primorial(nPrimorialMultiplier, mpzPrimorial);
	while(true)
	{
		//nCurrentTick = GetTickCount();
		if( primecoinBlock->xptFlags & XPT_WORKBUNDLE_FLAG_INTERRUPTABLE )
		{
			if( primecoinBlock->blockHeight != jhMiner_getCurrentWorkBlockHeight(primecoinBlock->threadIndex) )
				break;
		}
		primecoinBlock_generateHeaderHash(primecoinBlock, primecoinBlock->blockHeaderHash.begin());
		//
		// Search
		//
		bool fNewBlock = true;
		unsigned int nTriedMultiplier = 0;
		// Primecoin: try to find hash divisible by primorial
        uint256 phash = primecoinBlock->blockHeaderHash;
        mpz_class mpzHash;
        mpz_set_uint256(mpzHash.get_mpz_t(), phash);

		if( nHashFactor > 0 ) 
		{
			//while (primecoinBlock->nonce < primecoinBlock->nonceMax) {
			//	primecoinBlock->nonce++;			
			//	primecoinBlock_generateHeaderHash(primecoinBlock, primecoinBlock->blockHeaderHash.begin());
			//	phash = primecoinBlock->blockHeaderHash;
			//	mpz_set_uint256(mpzHash.get_mpz_t(), phash);
			//	
			//	if (phash < hashBlockHeaderLimit)
			//         continue;
			//    
			//	if (mpz_divisible_ui_p(mpzHash.get_mpz_t(), nHashFactor)) //&& mpz_divisible_ui_p(mpzHash.get_mpz_t(), 2))
			//		break;
			//}
			while ((phash < hashBlockHeaderLimit || !mpz_divisible_ui_p(mpzHash.get_mpz_t(), nHashFactor)) && primecoinBlock->nonce < primecoinBlock->nonceMax) {
				primecoinBlock->nonce++;
				primecoinBlock_generateHeaderHash(primecoinBlock, primecoinBlock->blockHeaderHash.begin());
				phash = primecoinBlock->blockHeaderHash;
				mpz_set_uint256(mpzHash.get_mpz_t(), phash);
			}
		}
		else
		{
			while ((phash < hashBlockHeaderLimit || !mpz_probab_prime_p(mpzHash.get_mpz_t(), 8)) && primecoinBlock->nonce < primecoinBlock->nonceMax) {
				primecoinBlock->nonce++;
				primecoinBlock_generateHeaderHash(primecoinBlock, primecoinBlock->blockHeaderHash.begin());
				phash = primecoinBlock->blockHeaderHash;
				mpz_set_uint256(mpzHash.get_mpz_t(), phash);
			}
		}
		
		// did we reach the end of the nonce range?
		if (primecoinBlock->nonce >= primecoinBlock->nonceMax)
		{
			jhMiner_primecoinAddProofOfWork(primecoinBlock->merkleRoot, primecoinBlock->prevBlockHash, numberOfProcessedSieves, primecoinBlock->timestamp, proofOfWork_maxChainlength, proofOfWork_chainType, proofOfWork_nonce, proofOfWork_multiplier, proofOfWork_depth);
			numberOfProcessedSieves = 0;
			proofOfWork_maxChainlength = 0;
			proofOfWork_multiplier = 0;
			proofOfWork_nonce = 0;
			proofOfWork_depth = 0;
			if( (primecoinBlock->xptFlags & XPT_WORKBUNDLE_FLAG_TIMESTAMPROLL) == 0 )
				break;
			// do timestamp roll (xpt rule: Dont skip timestamp values)
			primecoinBlock->timestamp++;
			primecoinBlock->nonce = primecoinBlock->nonceMin;
		}

		//// Primecoin: primorial fixed multiplier
		//mpz_class mpzPrimorial;
		unsigned int nRoundTests = 0;
		unsigned int nRoundPrimesHit = 0;
		int64 nPrimeTimerStart = GetTickCount();
	
//		Primorial(nPrimorialMultiplier, mpzPrimorial);

		unsigned int nTests = 0;
		unsigned int nPrimesHit = 0;
		
		//mpz_class mpzMultiplierMin = mpzPrimeMin * nHashFactor / mpzHash + 1;
		//while (mpzPrimorial < mpzMultiplierMin )
		//{
		//	if (!PrimeTableGetNextPrime(nPrimorialMultiplier))
		//		error("PrimecoinMiner() : primorial minimum overflow");
		//	Primorial(nPrimorialMultiplier, mpzPrimorial);
		//}

        mpz_class mpzFixedMultiplier;
		mpzFixedMultiplier = mpzPrimorial / nHashFactor;

  //      if (mpzPrimorial > nHashFactor) {
  //          mpzFixedMultiplier = mpzPrimorial / nHashFactor;
  //      } 
		//else 
		//{
  //          mpzFixedMultiplier = 1;
  //      }		
		//printf("fixedMultiplier: %d nPrimorialMultiplier: %d\n", BN_get_word(&bnFixedMultiplier), nPrimorialMultiplier);
		// Primecoin: mine for prime chain
		unsigned int nProbableChainLength;
		MineProbablePrimeChain(&psieve, primecoinBlock, mpzFixedMultiplier, fNewBlock, nTriedMultiplier, nProbableChainLength, nTests, nPrimesHit, threadIndex, mpzHash, nPrimorialMultiplier);
		numberOfProcessedSieves++;

		threadHearthBeat[threadIndex] = GetTickCount();
		if (appQuitSignal)
		{
			printf( "Shutting down mining thread %d.\n", threadIndex);
			return false;
		}
		nRoundTests += nTests;
		nRoundPrimesHit += nPrimesHit;
		primecoinBlock->nonce ++;

		//nPrimorialMultiplier = primeStats.nPrimorialMultiplier;
		//primecoinBlock->timestamp = max(primecoinBlock->timestamp, (unsigned int) time(NULL));
	}
	jhMiner_primecoinCompleteProofOfWork(primecoinBlock->merkleRoot, primecoinBlock->prevBlockHash, primecoinBlock->nonce, numberOfProcessedSieves, primecoinBlock->timestamp, proofOfWork_maxChainlength, proofOfWork_chainType, proofOfWork_nonce, proofOfWork_multiplier, proofOfWork_depth);
	if( psieve )
	{
		delete psieve;
		psieve = NULL;
	}
	return true;
}
