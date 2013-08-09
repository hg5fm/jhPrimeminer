# Compiler flags...
CPP_COMPILER = g++
C_COMPILER = gcc

# Include paths...
Debug_Include_Path=-I"./includes/" 
Debug_Include_Path=-I"./includes/" 
Release_Include_Path=-I"./includes/" 
Release_Include_Path=-I"./includes/" 

# Library paths...
Debug_Library_Path=
Debug_Library_Path=
Release_Library_Path=
Release_Library_Path=

# Additional libraries...
Debug_Libraries=-Wl,--start-group -llibeay32MT -lssleay32MT -lmpirxx -lmpir  -Wl,--end-group
Debug_Libraries=-Wl,--start-group -llibeay32MT -lssleay32MT -lmpirxx -lmpir  -Wl,--end-group
Release_Libraries=-Wl,--start-group -llibeay32MT -lssleay32MT -lmpirxx -lmpir  -Wl,--end-group
Release_Libraries=-Wl,--start-group -llibeay32MT -lssleay32MT -lmpirxx -lmpir  -Wl,--end-group

# Preprocessor definitions...
Debug_Preprocessor_Definitions=-D GCC_BUILD 
Debug_Preprocessor_Definitions=-D GCC_BUILD 
Release_Preprocessor_Definitions=-D GCC_BUILD 
Release_Preprocessor_Definitions=-D GCC_BUILD 

# Implictly linked object files...
Debug_Implicitly_Linked_Objects=
Debug_Implicitly_Linked_Objects=
Release_Implicitly_Linked_Objects=
Release_Implicitly_Linked_Objects=

# Compiler flags...
Debug_Compiler_Flags=-O0 -g 
Debug_Compiler_Flags=-O0 -g 
Release_Compiler_Flags=-O2 -g 
Release_Compiler_Flags=-O2 -g 

# Builds all configurations for this project...
.PHONY: build_all_configurations
build_all_configurations: Debug Debug Release Release 

# Builds the Debug configuration...
.PHONY: Debug
Debug: create_folders gccDebug/bn2.o gccDebug/bn2_div.o gccDebug/main.o gccDebug/miner.o gccDebug/prime.o gccDebug/jhlib/bmp.o gccDebug/jhlib/customBuffer.o gccDebug/jhlib/fastSorter.o gccDebug/jhlib/fastString.o gccDebug/jhlib/fastString_eprintf.o gccDebug/jhlib/fileMgr.o gccDebug/jhlib/fMath.o gccDebug/jhlib/hashTable_uint32.o gccDebug/jhlib/msgQueue.o gccDebug/jhlib/packetBuffer.o gccDebug/jhlib/perlinNoise.o gccDebug/jhlib/sData.o gccDebug/jhlib/simpleHTTP.o gccDebug/jhlib/simpleList.o gccDebug/jhlib/streamWrapper.o gccDebug/jhlib/tgaLib.o gccDebug/ripemd160.o gccDebug/sha256.o gccDebug/includes/openssl/applink.o gccDebug/jsonBuilder.o gccDebug/jsonClient.o gccDebug/jsonObject.o gccDebug/jsonParser.o gccDebug/jsonrpc.o gccDebug/xptClient.o gccDebug/xptClientPacketHandler.o gccDebug/xptPacketbuffer.o gccDebug/xptServer.o gccDebug/xptServerPacketHandler.o 
	g++ gccDebug/bn2.o gccDebug/bn2_div.o gccDebug/main.o gccDebug/miner.o gccDebug/prime.o gccDebug/jhlib/bmp.o gccDebug/jhlib/customBuffer.o gccDebug/jhlib/fastSorter.o gccDebug/jhlib/fastString.o gccDebug/jhlib/fastString_eprintf.o gccDebug/jhlib/fileMgr.o gccDebug/jhlib/fMath.o gccDebug/jhlib/hashTable_uint32.o gccDebug/jhlib/msgQueue.o gccDebug/jhlib/packetBuffer.o gccDebug/jhlib/perlinNoise.o gccDebug/jhlib/sData.o gccDebug/jhlib/simpleHTTP.o gccDebug/jhlib/simpleList.o gccDebug/jhlib/streamWrapper.o gccDebug/jhlib/tgaLib.o gccDebug/ripemd160.o gccDebug/sha256.o gccDebug/includes/openssl/applink.o gccDebug/jsonBuilder.o gccDebug/jsonClient.o gccDebug/jsonObject.o gccDebug/jsonParser.o gccDebug/jsonrpc.o gccDebug/xptClient.o gccDebug/xptClientPacketHandler.o gccDebug/xptPacketbuffer.o gccDebug/xptServer.o gccDebug/xptServerPacketHandler.o  $(Debug_Library_Path) $(Debug_Libraries) -Wl,-rpath,./ -o ..//gccbin/jhPrimeminer.exe

# Compiles file bn2.cpp for the Debug configuration...
-include gccDebug/bn2.d
gccDebug/bn2.o: bn2.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c bn2.cpp $(Debug_Include_Path) -o gccDebug/bn2.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM bn2.cpp $(Debug_Include_Path) > gccDebug/bn2.d

# Compiles file bn2_div.cpp for the Debug configuration...
-include gccDebug/bn2_div.d
gccDebug/bn2_div.o: bn2_div.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c bn2_div.cpp $(Debug_Include_Path) -o gccDebug/bn2_div.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM bn2_div.cpp $(Debug_Include_Path) > gccDebug/bn2_div.d

# Compiles file main.cpp for the Debug configuration...
-include gccDebug/main.d
gccDebug/main.o: main.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c main.cpp $(Debug_Include_Path) -o gccDebug/main.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM main.cpp $(Debug_Include_Path) > gccDebug/main.d

# Compiles file miner.cpp for the Debug configuration...
-include gccDebug/miner.d
gccDebug/miner.o: miner.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c miner.cpp $(Debug_Include_Path) -o gccDebug/miner.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM miner.cpp $(Debug_Include_Path) > gccDebug/miner.d

# Compiles file prime.cpp for the Debug configuration...
-include gccDebug/prime.d
gccDebug/prime.o: prime.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c prime.cpp $(Debug_Include_Path) -o gccDebug/prime.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM prime.cpp $(Debug_Include_Path) > gccDebug/prime.d

# Compiles file jhlib/bmp.cpp for the Debug configuration...
-include gccDebug/jhlib/bmp.d
gccDebug/jhlib/bmp.o: jhlib/bmp.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/bmp.cpp $(Debug_Include_Path) -o gccDebug/jhlib/bmp.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/bmp.cpp $(Debug_Include_Path) > gccDebug/jhlib/bmp.d

# Compiles file jhlib/customBuffer.cpp for the Debug configuration...
-include gccDebug/jhlib/customBuffer.d
gccDebug/jhlib/customBuffer.o: jhlib/customBuffer.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/customBuffer.cpp $(Debug_Include_Path) -o gccDebug/jhlib/customBuffer.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/customBuffer.cpp $(Debug_Include_Path) > gccDebug/jhlib/customBuffer.d

# Compiles file jhlib/fastSorter.cpp for the Debug configuration...
-include gccDebug/jhlib/fastSorter.d
gccDebug/jhlib/fastSorter.o: jhlib/fastSorter.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/fastSorter.cpp $(Debug_Include_Path) -o gccDebug/jhlib/fastSorter.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/fastSorter.cpp $(Debug_Include_Path) > gccDebug/jhlib/fastSorter.d

# Compiles file jhlib/fastString.cpp for the Debug configuration...
-include gccDebug/jhlib/fastString.d
gccDebug/jhlib/fastString.o: jhlib/fastString.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/fastString.cpp $(Debug_Include_Path) -o gccDebug/jhlib/fastString.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/fastString.cpp $(Debug_Include_Path) > gccDebug/jhlib/fastString.d

# Compiles file jhlib/fastString_eprintf.cpp for the Debug configuration...
-include gccDebug/jhlib/fastString_eprintf.d
gccDebug/jhlib/fastString_eprintf.o: jhlib/fastString_eprintf.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/fastString_eprintf.cpp $(Debug_Include_Path) -o gccDebug/jhlib/fastString_eprintf.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/fastString_eprintf.cpp $(Debug_Include_Path) > gccDebug/jhlib/fastString_eprintf.d

# Compiles file jhlib/fileMgr.cpp for the Debug configuration...
-include gccDebug/jhlib/fileMgr.d
gccDebug/jhlib/fileMgr.o: jhlib/fileMgr.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/fileMgr.cpp $(Debug_Include_Path) -o gccDebug/jhlib/fileMgr.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/fileMgr.cpp $(Debug_Include_Path) > gccDebug/jhlib/fileMgr.d

# Compiles file jhlib/fMath.cpp for the Debug configuration...
-include gccDebug/jhlib/fMath.d
gccDebug/jhlib/fMath.o: jhlib/fMath.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/fMath.cpp $(Debug_Include_Path) -o gccDebug/jhlib/fMath.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/fMath.cpp $(Debug_Include_Path) > gccDebug/jhlib/fMath.d

# Compiles file jhlib/hashTable_uint32.cpp for the Debug configuration...
-include gccDebug/jhlib/hashTable_uint32.d
gccDebug/jhlib/hashTable_uint32.o: jhlib/hashTable_uint32.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/hashTable_uint32.cpp $(Debug_Include_Path) -o gccDebug/jhlib/hashTable_uint32.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/hashTable_uint32.cpp $(Debug_Include_Path) > gccDebug/jhlib/hashTable_uint32.d

# Compiles file jhlib/msgQueue.cpp for the Debug configuration...
-include gccDebug/jhlib/msgQueue.d
gccDebug/jhlib/msgQueue.o: jhlib/msgQueue.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/msgQueue.cpp $(Debug_Include_Path) -o gccDebug/jhlib/msgQueue.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/msgQueue.cpp $(Debug_Include_Path) > gccDebug/jhlib/msgQueue.d

# Compiles file jhlib/packetBuffer.cpp for the Debug configuration...
-include gccDebug/jhlib/packetBuffer.d
gccDebug/jhlib/packetBuffer.o: jhlib/packetBuffer.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/packetBuffer.cpp $(Debug_Include_Path) -o gccDebug/jhlib/packetBuffer.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/packetBuffer.cpp $(Debug_Include_Path) > gccDebug/jhlib/packetBuffer.d

# Compiles file jhlib/perlinNoise.cpp for the Debug configuration...
-include gccDebug/jhlib/perlinNoise.d
gccDebug/jhlib/perlinNoise.o: jhlib/perlinNoise.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/perlinNoise.cpp $(Debug_Include_Path) -o gccDebug/jhlib/perlinNoise.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/perlinNoise.cpp $(Debug_Include_Path) > gccDebug/jhlib/perlinNoise.d

# Compiles file jhlib/sData.cpp for the Debug configuration...
-include gccDebug/jhlib/sData.d
gccDebug/jhlib/sData.o: jhlib/sData.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/sData.cpp $(Debug_Include_Path) -o gccDebug/jhlib/sData.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/sData.cpp $(Debug_Include_Path) > gccDebug/jhlib/sData.d

# Compiles file jhlib/simpleHTTP.cpp for the Debug configuration...
-include gccDebug/jhlib/simpleHTTP.d
gccDebug/jhlib/simpleHTTP.o: jhlib/simpleHTTP.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/simpleHTTP.cpp $(Debug_Include_Path) -o gccDebug/jhlib/simpleHTTP.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/simpleHTTP.cpp $(Debug_Include_Path) > gccDebug/jhlib/simpleHTTP.d

# Compiles file jhlib/simpleList.cpp for the Debug configuration...
-include gccDebug/jhlib/simpleList.d
gccDebug/jhlib/simpleList.o: jhlib/simpleList.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/simpleList.cpp $(Debug_Include_Path) -o gccDebug/jhlib/simpleList.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/simpleList.cpp $(Debug_Include_Path) > gccDebug/jhlib/simpleList.d

# Compiles file jhlib/streamWrapper.cpp for the Debug configuration...
-include gccDebug/jhlib/streamWrapper.d
gccDebug/jhlib/streamWrapper.o: jhlib/streamWrapper.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/streamWrapper.cpp $(Debug_Include_Path) -o gccDebug/jhlib/streamWrapper.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/streamWrapper.cpp $(Debug_Include_Path) > gccDebug/jhlib/streamWrapper.d

# Compiles file jhlib/tgaLib.cpp for the Debug configuration...
-include gccDebug/jhlib/tgaLib.d
gccDebug/jhlib/tgaLib.o: jhlib/tgaLib.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/tgaLib.cpp $(Debug_Include_Path) -o gccDebug/jhlib/tgaLib.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/tgaLib.cpp $(Debug_Include_Path) > gccDebug/jhlib/tgaLib.d

# Compiles file ripemd160.cpp for the Debug configuration...
-include gccDebug/ripemd160.d
gccDebug/ripemd160.o: ripemd160.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ripemd160.cpp $(Debug_Include_Path) -o gccDebug/ripemd160.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ripemd160.cpp $(Debug_Include_Path) > gccDebug/ripemd160.d

# Compiles file sha256.cpp for the Debug configuration...
-include gccDebug/sha256.d
gccDebug/sha256.o: sha256.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c sha256.cpp $(Debug_Include_Path) -o gccDebug/sha256.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM sha256.cpp $(Debug_Include_Path) > gccDebug/sha256.d

# Compiles file includes/openssl/applink.c for the Debug configuration...
-include gccDebug/includes/openssl/applink.d
gccDebug/includes/openssl/applink.o: includes/openssl/applink.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c includes/openssl/applink.c $(Debug_Include_Path) -o gccDebug/includes/openssl/applink.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM includes/openssl/applink.c $(Debug_Include_Path) > gccDebug/includes/openssl/applink.d

# Compiles file jsonBuilder.cpp for the Debug configuration...
-include gccDebug/jsonBuilder.d
gccDebug/jsonBuilder.o: jsonBuilder.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jsonBuilder.cpp $(Debug_Include_Path) -o gccDebug/jsonBuilder.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jsonBuilder.cpp $(Debug_Include_Path) > gccDebug/jsonBuilder.d

# Compiles file jsonClient.cpp for the Debug configuration...
-include gccDebug/jsonClient.d
gccDebug/jsonClient.o: jsonClient.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jsonClient.cpp $(Debug_Include_Path) -o gccDebug/jsonClient.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jsonClient.cpp $(Debug_Include_Path) > gccDebug/jsonClient.d

# Compiles file jsonObject.cpp for the Debug configuration...
-include gccDebug/jsonObject.d
gccDebug/jsonObject.o: jsonObject.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jsonObject.cpp $(Debug_Include_Path) -o gccDebug/jsonObject.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jsonObject.cpp $(Debug_Include_Path) > gccDebug/jsonObject.d

# Compiles file jsonParser.cpp for the Debug configuration...
-include gccDebug/jsonParser.d
gccDebug/jsonParser.o: jsonParser.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jsonParser.cpp $(Debug_Include_Path) -o gccDebug/jsonParser.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jsonParser.cpp $(Debug_Include_Path) > gccDebug/jsonParser.d

# Compiles file jsonrpc.cpp for the Debug configuration...
-include gccDebug/jsonrpc.d
gccDebug/jsonrpc.o: jsonrpc.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jsonrpc.cpp $(Debug_Include_Path) -o gccDebug/jsonrpc.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jsonrpc.cpp $(Debug_Include_Path) > gccDebug/jsonrpc.d

# Compiles file xptClient.cpp for the Debug configuration...
-include gccDebug/xptClient.d
gccDebug/xptClient.o: xptClient.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c xptClient.cpp $(Debug_Include_Path) -o gccDebug/xptClient.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM xptClient.cpp $(Debug_Include_Path) > gccDebug/xptClient.d

# Compiles file xptClientPacketHandler.cpp for the Debug configuration...
-include gccDebug/xptClientPacketHandler.d
gccDebug/xptClientPacketHandler.o: xptClientPacketHandler.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c xptClientPacketHandler.cpp $(Debug_Include_Path) -o gccDebug/xptClientPacketHandler.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM xptClientPacketHandler.cpp $(Debug_Include_Path) > gccDebug/xptClientPacketHandler.d

# Compiles file xptPacketbuffer.cpp for the Debug configuration...
-include gccDebug/xptPacketbuffer.d
gccDebug/xptPacketbuffer.o: xptPacketbuffer.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c xptPacketbuffer.cpp $(Debug_Include_Path) -o gccDebug/xptPacketbuffer.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM xptPacketbuffer.cpp $(Debug_Include_Path) > gccDebug/xptPacketbuffer.d

# Compiles file xptServer.cpp for the Debug configuration...
-include gccDebug/xptServer.d
gccDebug/xptServer.o: xptServer.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c xptServer.cpp $(Debug_Include_Path) -o gccDebug/xptServer.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM xptServer.cpp $(Debug_Include_Path) > gccDebug/xptServer.d

# Compiles file xptServerPacketHandler.cpp for the Debug configuration...
-include gccDebug/xptServerPacketHandler.d
gccDebug/xptServerPacketHandler.o: xptServerPacketHandler.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c xptServerPacketHandler.cpp $(Debug_Include_Path) -o gccDebug/xptServerPacketHandler.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM xptServerPacketHandler.cpp $(Debug_Include_Path) > gccDebug/xptServerPacketHandler.d

# Builds the Debug configuration...
.PHONY: Debug
Debug: create_folders x64/gccDebug/bn2.o x64/gccDebug/bn2_div.o x64/gccDebug/main.o x64/gccDebug/miner.o x64/gccDebug/prime.o x64/gccDebug/jhlib/bmp.o x64/gccDebug/jhlib/customBuffer.o x64/gccDebug/jhlib/fastSorter.o x64/gccDebug/jhlib/fastString.o x64/gccDebug/jhlib/fastString_eprintf.o x64/gccDebug/jhlib/fileMgr.o x64/gccDebug/jhlib/fMath.o x64/gccDebug/jhlib/hashTable_uint32.o x64/gccDebug/jhlib/msgQueue.o x64/gccDebug/jhlib/packetBuffer.o x64/gccDebug/jhlib/perlinNoise.o x64/gccDebug/jhlib/sData.o x64/gccDebug/jhlib/simpleHTTP.o x64/gccDebug/jhlib/simpleList.o x64/gccDebug/jhlib/streamWrapper.o x64/gccDebug/jhlib/tgaLib.o x64/gccDebug/ripemd160.o x64/gccDebug/sha256.o x64/gccDebug/includes/openssl/applink.o x64/gccDebug/jsonBuilder.o x64/gccDebug/jsonClient.o x64/gccDebug/jsonObject.o x64/gccDebug/jsonParser.o x64/gccDebug/jsonrpc.o x64/gccDebug/xptClient.o x64/gccDebug/xptClientPacketHandler.o x64/gccDebug/xptPacketbuffer.o x64/gccDebug/xptServer.o x64/gccDebug/xptServerPacketHandler.o 
	g++ x64/gccDebug/bn2.o x64/gccDebug/bn2_div.o x64/gccDebug/main.o x64/gccDebug/miner.o x64/gccDebug/prime.o x64/gccDebug/jhlib/bmp.o x64/gccDebug/jhlib/customBuffer.o x64/gccDebug/jhlib/fastSorter.o x64/gccDebug/jhlib/fastString.o x64/gccDebug/jhlib/fastString_eprintf.o x64/gccDebug/jhlib/fileMgr.o x64/gccDebug/jhlib/fMath.o x64/gccDebug/jhlib/hashTable_uint32.o x64/gccDebug/jhlib/msgQueue.o x64/gccDebug/jhlib/packetBuffer.o x64/gccDebug/jhlib/perlinNoise.o x64/gccDebug/jhlib/sData.o x64/gccDebug/jhlib/simpleHTTP.o x64/gccDebug/jhlib/simpleList.o x64/gccDebug/jhlib/streamWrapper.o x64/gccDebug/jhlib/tgaLib.o x64/gccDebug/ripemd160.o x64/gccDebug/sha256.o x64/gccDebug/includes/openssl/applink.o x64/gccDebug/jsonBuilder.o x64/gccDebug/jsonClient.o x64/gccDebug/jsonObject.o x64/gccDebug/jsonParser.o x64/gccDebug/jsonrpc.o x64/gccDebug/xptClient.o x64/gccDebug/xptClientPacketHandler.o x64/gccDebug/xptPacketbuffer.o x64/gccDebug/xptServer.o x64/gccDebug/xptServerPacketHandler.o  $(Debug_Library_Path) $(Debug_Libraries) -Wl,-rpath,./ -o ../x64/gccDebug/jhPrimeminer.exe

# Compiles file bn2.cpp for the Debug configuration...
-include x64/gccDebug/bn2.d
x64/gccDebug/bn2.o: bn2.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c bn2.cpp $(Debug_Include_Path) -o x64/gccDebug/bn2.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM bn2.cpp $(Debug_Include_Path) > x64/gccDebug/bn2.d

# Compiles file bn2_div.cpp for the Debug configuration...
-include x64/gccDebug/bn2_div.d
x64/gccDebug/bn2_div.o: bn2_div.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c bn2_div.cpp $(Debug_Include_Path) -o x64/gccDebug/bn2_div.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM bn2_div.cpp $(Debug_Include_Path) > x64/gccDebug/bn2_div.d

# Compiles file main.cpp for the Debug configuration...
-include x64/gccDebug/main.d
x64/gccDebug/main.o: main.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c main.cpp $(Debug_Include_Path) -o x64/gccDebug/main.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM main.cpp $(Debug_Include_Path) > x64/gccDebug/main.d

# Compiles file miner.cpp for the Debug configuration...
-include x64/gccDebug/miner.d
x64/gccDebug/miner.o: miner.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c miner.cpp $(Debug_Include_Path) -o x64/gccDebug/miner.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM miner.cpp $(Debug_Include_Path) > x64/gccDebug/miner.d

# Compiles file prime.cpp for the Debug configuration...
-include x64/gccDebug/prime.d
x64/gccDebug/prime.o: prime.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c prime.cpp $(Debug_Include_Path) -o x64/gccDebug/prime.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM prime.cpp $(Debug_Include_Path) > x64/gccDebug/prime.d

# Compiles file jhlib/bmp.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/bmp.d
x64/gccDebug/jhlib/bmp.o: jhlib/bmp.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/bmp.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/bmp.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/bmp.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/bmp.d

# Compiles file jhlib/customBuffer.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/customBuffer.d
x64/gccDebug/jhlib/customBuffer.o: jhlib/customBuffer.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/customBuffer.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/customBuffer.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/customBuffer.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/customBuffer.d

# Compiles file jhlib/fastSorter.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/fastSorter.d
x64/gccDebug/jhlib/fastSorter.o: jhlib/fastSorter.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/fastSorter.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/fastSorter.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/fastSorter.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/fastSorter.d

# Compiles file jhlib/fastString.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/fastString.d
x64/gccDebug/jhlib/fastString.o: jhlib/fastString.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/fastString.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/fastString.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/fastString.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/fastString.d

# Compiles file jhlib/fastString_eprintf.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/fastString_eprintf.d
x64/gccDebug/jhlib/fastString_eprintf.o: jhlib/fastString_eprintf.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/fastString_eprintf.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/fastString_eprintf.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/fastString_eprintf.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/fastString_eprintf.d

# Compiles file jhlib/fileMgr.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/fileMgr.d
x64/gccDebug/jhlib/fileMgr.o: jhlib/fileMgr.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/fileMgr.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/fileMgr.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/fileMgr.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/fileMgr.d

# Compiles file jhlib/fMath.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/fMath.d
x64/gccDebug/jhlib/fMath.o: jhlib/fMath.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/fMath.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/fMath.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/fMath.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/fMath.d

# Compiles file jhlib/hashTable_uint32.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/hashTable_uint32.d
x64/gccDebug/jhlib/hashTable_uint32.o: jhlib/hashTable_uint32.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/hashTable_uint32.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/hashTable_uint32.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/hashTable_uint32.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/hashTable_uint32.d

# Compiles file jhlib/msgQueue.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/msgQueue.d
x64/gccDebug/jhlib/msgQueue.o: jhlib/msgQueue.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/msgQueue.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/msgQueue.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/msgQueue.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/msgQueue.d

# Compiles file jhlib/packetBuffer.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/packetBuffer.d
x64/gccDebug/jhlib/packetBuffer.o: jhlib/packetBuffer.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/packetBuffer.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/packetBuffer.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/packetBuffer.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/packetBuffer.d

# Compiles file jhlib/perlinNoise.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/perlinNoise.d
x64/gccDebug/jhlib/perlinNoise.o: jhlib/perlinNoise.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/perlinNoise.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/perlinNoise.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/perlinNoise.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/perlinNoise.d

# Compiles file jhlib/sData.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/sData.d
x64/gccDebug/jhlib/sData.o: jhlib/sData.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/sData.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/sData.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/sData.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/sData.d

# Compiles file jhlib/simpleHTTP.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/simpleHTTP.d
x64/gccDebug/jhlib/simpleHTTP.o: jhlib/simpleHTTP.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/simpleHTTP.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/simpleHTTP.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/simpleHTTP.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/simpleHTTP.d

# Compiles file jhlib/simpleList.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/simpleList.d
x64/gccDebug/jhlib/simpleList.o: jhlib/simpleList.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/simpleList.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/simpleList.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/simpleList.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/simpleList.d

# Compiles file jhlib/streamWrapper.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/streamWrapper.d
x64/gccDebug/jhlib/streamWrapper.o: jhlib/streamWrapper.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/streamWrapper.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/streamWrapper.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/streamWrapper.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/streamWrapper.d

# Compiles file jhlib/tgaLib.cpp for the Debug configuration...
-include x64/gccDebug/jhlib/tgaLib.d
x64/gccDebug/jhlib/tgaLib.o: jhlib/tgaLib.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jhlib/tgaLib.cpp $(Debug_Include_Path) -o x64/gccDebug/jhlib/tgaLib.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jhlib/tgaLib.cpp $(Debug_Include_Path) > x64/gccDebug/jhlib/tgaLib.d

# Compiles file ripemd160.cpp for the Debug configuration...
-include x64/gccDebug/ripemd160.d
x64/gccDebug/ripemd160.o: ripemd160.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c ripemd160.cpp $(Debug_Include_Path) -o x64/gccDebug/ripemd160.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM ripemd160.cpp $(Debug_Include_Path) > x64/gccDebug/ripemd160.d

# Compiles file sha256.cpp for the Debug configuration...
-include x64/gccDebug/sha256.d
x64/gccDebug/sha256.o: sha256.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c sha256.cpp $(Debug_Include_Path) -o x64/gccDebug/sha256.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM sha256.cpp $(Debug_Include_Path) > x64/gccDebug/sha256.d

# Compiles file includes/openssl/applink.c for the Debug configuration...
-include x64/gccDebug/includes/openssl/applink.d
x64/gccDebug/includes/openssl/applink.o: includes/openssl/applink.c
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c includes/openssl/applink.c $(Debug_Include_Path) -o x64/gccDebug/includes/openssl/applink.o
	$(C_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM includes/openssl/applink.c $(Debug_Include_Path) > x64/gccDebug/includes/openssl/applink.d

# Compiles file jsonBuilder.cpp for the Debug configuration...
-include x64/gccDebug/jsonBuilder.d
x64/gccDebug/jsonBuilder.o: jsonBuilder.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jsonBuilder.cpp $(Debug_Include_Path) -o x64/gccDebug/jsonBuilder.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jsonBuilder.cpp $(Debug_Include_Path) > x64/gccDebug/jsonBuilder.d

# Compiles file jsonClient.cpp for the Debug configuration...
-include x64/gccDebug/jsonClient.d
x64/gccDebug/jsonClient.o: jsonClient.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jsonClient.cpp $(Debug_Include_Path) -o x64/gccDebug/jsonClient.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jsonClient.cpp $(Debug_Include_Path) > x64/gccDebug/jsonClient.d

# Compiles file jsonObject.cpp for the Debug configuration...
-include x64/gccDebug/jsonObject.d
x64/gccDebug/jsonObject.o: jsonObject.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jsonObject.cpp $(Debug_Include_Path) -o x64/gccDebug/jsonObject.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jsonObject.cpp $(Debug_Include_Path) > x64/gccDebug/jsonObject.d

# Compiles file jsonParser.cpp for the Debug configuration...
-include x64/gccDebug/jsonParser.d
x64/gccDebug/jsonParser.o: jsonParser.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jsonParser.cpp $(Debug_Include_Path) -o x64/gccDebug/jsonParser.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jsonParser.cpp $(Debug_Include_Path) > x64/gccDebug/jsonParser.d

# Compiles file jsonrpc.cpp for the Debug configuration...
-include x64/gccDebug/jsonrpc.d
x64/gccDebug/jsonrpc.o: jsonrpc.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c jsonrpc.cpp $(Debug_Include_Path) -o x64/gccDebug/jsonrpc.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM jsonrpc.cpp $(Debug_Include_Path) > x64/gccDebug/jsonrpc.d

# Compiles file xptClient.cpp for the Debug configuration...
-include x64/gccDebug/xptClient.d
x64/gccDebug/xptClient.o: xptClient.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c xptClient.cpp $(Debug_Include_Path) -o x64/gccDebug/xptClient.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM xptClient.cpp $(Debug_Include_Path) > x64/gccDebug/xptClient.d

# Compiles file xptClientPacketHandler.cpp for the Debug configuration...
-include x64/gccDebug/xptClientPacketHandler.d
x64/gccDebug/xptClientPacketHandler.o: xptClientPacketHandler.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c xptClientPacketHandler.cpp $(Debug_Include_Path) -o x64/gccDebug/xptClientPacketHandler.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM xptClientPacketHandler.cpp $(Debug_Include_Path) > x64/gccDebug/xptClientPacketHandler.d

# Compiles file xptPacketbuffer.cpp for the Debug configuration...
-include x64/gccDebug/xptPacketbuffer.d
x64/gccDebug/xptPacketbuffer.o: xptPacketbuffer.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c xptPacketbuffer.cpp $(Debug_Include_Path) -o x64/gccDebug/xptPacketbuffer.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM xptPacketbuffer.cpp $(Debug_Include_Path) > x64/gccDebug/xptPacketbuffer.d

# Compiles file xptServer.cpp for the Debug configuration...
-include x64/gccDebug/xptServer.d
x64/gccDebug/xptServer.o: xptServer.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c xptServer.cpp $(Debug_Include_Path) -o x64/gccDebug/xptServer.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM xptServer.cpp $(Debug_Include_Path) > x64/gccDebug/xptServer.d

# Compiles file xptServerPacketHandler.cpp for the Debug configuration...
-include x64/gccDebug/xptServerPacketHandler.d
x64/gccDebug/xptServerPacketHandler.o: xptServerPacketHandler.cpp
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -c xptServerPacketHandler.cpp $(Debug_Include_Path) -o x64/gccDebug/xptServerPacketHandler.o
	$(CPP_COMPILER) $(Debug_Preprocessor_Definitions) $(Debug_Compiler_Flags) -MM xptServerPacketHandler.cpp $(Debug_Include_Path) > x64/gccDebug/xptServerPacketHandler.d

# Builds the Release configuration...
.PHONY: Release
Release: create_folders gccRelease/bn2.o gccRelease/bn2_div.o gccRelease/main.o gccRelease/miner.o gccRelease/prime.o gccRelease/jhlib/bmp.o gccRelease/jhlib/customBuffer.o gccRelease/jhlib/fastSorter.o gccRelease/jhlib/fastString.o gccRelease/jhlib/fastString_eprintf.o gccRelease/jhlib/fileMgr.o gccRelease/jhlib/fMath.o gccRelease/jhlib/hashTable_uint32.o gccRelease/jhlib/msgQueue.o gccRelease/jhlib/packetBuffer.o gccRelease/jhlib/perlinNoise.o gccRelease/jhlib/sData.o gccRelease/jhlib/simpleHTTP.o gccRelease/jhlib/simpleList.o gccRelease/jhlib/streamWrapper.o gccRelease/jhlib/tgaLib.o gccRelease/ripemd160.o gccRelease/sha256.o gccRelease/includes/openssl/applink.o gccRelease/jsonBuilder.o gccRelease/jsonClient.o gccRelease/jsonObject.o gccRelease/jsonParser.o gccRelease/jsonrpc.o gccRelease/xptClient.o gccRelease/xptClientPacketHandler.o gccRelease/xptPacketbuffer.o gccRelease/xptServer.o gccRelease/xptServerPacketHandler.o 
	g++ gccRelease/bn2.o gccRelease/bn2_div.o gccRelease/main.o gccRelease/miner.o gccRelease/prime.o gccRelease/jhlib/bmp.o gccRelease/jhlib/customBuffer.o gccRelease/jhlib/fastSorter.o gccRelease/jhlib/fastString.o gccRelease/jhlib/fastString_eprintf.o gccRelease/jhlib/fileMgr.o gccRelease/jhlib/fMath.o gccRelease/jhlib/hashTable_uint32.o gccRelease/jhlib/msgQueue.o gccRelease/jhlib/packetBuffer.o gccRelease/jhlib/perlinNoise.o gccRelease/jhlib/sData.o gccRelease/jhlib/simpleHTTP.o gccRelease/jhlib/simpleList.o gccRelease/jhlib/streamWrapper.o gccRelease/jhlib/tgaLib.o gccRelease/ripemd160.o gccRelease/sha256.o gccRelease/includes/openssl/applink.o gccRelease/jsonBuilder.o gccRelease/jsonClient.o gccRelease/jsonObject.o gccRelease/jsonParser.o gccRelease/jsonrpc.o gccRelease/xptClient.o gccRelease/xptClientPacketHandler.o gccRelease/xptPacketbuffer.o gccRelease/xptServer.o gccRelease/xptServerPacketHandler.o  $(Release_Library_Path) $(Release_Libraries) -Wl,-rpath,./ -o ..//gccbin/jhPrimeminer.exe

# Compiles file bn2.cpp for the Release configuration...
-include gccRelease/bn2.d
gccRelease/bn2.o: bn2.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c bn2.cpp $(Release_Include_Path) -o gccRelease/bn2.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM bn2.cpp $(Release_Include_Path) > gccRelease/bn2.d

# Compiles file bn2_div.cpp for the Release configuration...
-include gccRelease/bn2_div.d
gccRelease/bn2_div.o: bn2_div.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c bn2_div.cpp $(Release_Include_Path) -o gccRelease/bn2_div.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM bn2_div.cpp $(Release_Include_Path) > gccRelease/bn2_div.d

# Compiles file main.cpp for the Release configuration...
-include gccRelease/main.d
gccRelease/main.o: main.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c main.cpp $(Release_Include_Path) -o gccRelease/main.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM main.cpp $(Release_Include_Path) > gccRelease/main.d

# Compiles file miner.cpp for the Release configuration...
-include gccRelease/miner.d
gccRelease/miner.o: miner.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c miner.cpp $(Release_Include_Path) -o gccRelease/miner.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM miner.cpp $(Release_Include_Path) > gccRelease/miner.d

# Compiles file prime.cpp for the Release configuration...
-include gccRelease/prime.d
gccRelease/prime.o: prime.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c prime.cpp $(Release_Include_Path) -o gccRelease/prime.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM prime.cpp $(Release_Include_Path) > gccRelease/prime.d

# Compiles file jhlib/bmp.cpp for the Release configuration...
-include gccRelease/jhlib/bmp.d
gccRelease/jhlib/bmp.o: jhlib/bmp.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/bmp.cpp $(Release_Include_Path) -o gccRelease/jhlib/bmp.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/bmp.cpp $(Release_Include_Path) > gccRelease/jhlib/bmp.d

# Compiles file jhlib/customBuffer.cpp for the Release configuration...
-include gccRelease/jhlib/customBuffer.d
gccRelease/jhlib/customBuffer.o: jhlib/customBuffer.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/customBuffer.cpp $(Release_Include_Path) -o gccRelease/jhlib/customBuffer.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/customBuffer.cpp $(Release_Include_Path) > gccRelease/jhlib/customBuffer.d

# Compiles file jhlib/fastSorter.cpp for the Release configuration...
-include gccRelease/jhlib/fastSorter.d
gccRelease/jhlib/fastSorter.o: jhlib/fastSorter.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/fastSorter.cpp $(Release_Include_Path) -o gccRelease/jhlib/fastSorter.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/fastSorter.cpp $(Release_Include_Path) > gccRelease/jhlib/fastSorter.d

# Compiles file jhlib/fastString.cpp for the Release configuration...
-include gccRelease/jhlib/fastString.d
gccRelease/jhlib/fastString.o: jhlib/fastString.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/fastString.cpp $(Release_Include_Path) -o gccRelease/jhlib/fastString.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/fastString.cpp $(Release_Include_Path) > gccRelease/jhlib/fastString.d

# Compiles file jhlib/fastString_eprintf.cpp for the Release configuration...
-include gccRelease/jhlib/fastString_eprintf.d
gccRelease/jhlib/fastString_eprintf.o: jhlib/fastString_eprintf.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/fastString_eprintf.cpp $(Release_Include_Path) -o gccRelease/jhlib/fastString_eprintf.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/fastString_eprintf.cpp $(Release_Include_Path) > gccRelease/jhlib/fastString_eprintf.d

# Compiles file jhlib/fileMgr.cpp for the Release configuration...
-include gccRelease/jhlib/fileMgr.d
gccRelease/jhlib/fileMgr.o: jhlib/fileMgr.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/fileMgr.cpp $(Release_Include_Path) -o gccRelease/jhlib/fileMgr.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/fileMgr.cpp $(Release_Include_Path) > gccRelease/jhlib/fileMgr.d

# Compiles file jhlib/fMath.cpp for the Release configuration...
-include gccRelease/jhlib/fMath.d
gccRelease/jhlib/fMath.o: jhlib/fMath.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/fMath.cpp $(Release_Include_Path) -o gccRelease/jhlib/fMath.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/fMath.cpp $(Release_Include_Path) > gccRelease/jhlib/fMath.d

# Compiles file jhlib/hashTable_uint32.cpp for the Release configuration...
-include gccRelease/jhlib/hashTable_uint32.d
gccRelease/jhlib/hashTable_uint32.o: jhlib/hashTable_uint32.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/hashTable_uint32.cpp $(Release_Include_Path) -o gccRelease/jhlib/hashTable_uint32.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/hashTable_uint32.cpp $(Release_Include_Path) > gccRelease/jhlib/hashTable_uint32.d

# Compiles file jhlib/msgQueue.cpp for the Release configuration...
-include gccRelease/jhlib/msgQueue.d
gccRelease/jhlib/msgQueue.o: jhlib/msgQueue.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/msgQueue.cpp $(Release_Include_Path) -o gccRelease/jhlib/msgQueue.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/msgQueue.cpp $(Release_Include_Path) > gccRelease/jhlib/msgQueue.d

# Compiles file jhlib/packetBuffer.cpp for the Release configuration...
-include gccRelease/jhlib/packetBuffer.d
gccRelease/jhlib/packetBuffer.o: jhlib/packetBuffer.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/packetBuffer.cpp $(Release_Include_Path) -o gccRelease/jhlib/packetBuffer.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/packetBuffer.cpp $(Release_Include_Path) > gccRelease/jhlib/packetBuffer.d

# Compiles file jhlib/perlinNoise.cpp for the Release configuration...
-include gccRelease/jhlib/perlinNoise.d
gccRelease/jhlib/perlinNoise.o: jhlib/perlinNoise.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/perlinNoise.cpp $(Release_Include_Path) -o gccRelease/jhlib/perlinNoise.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/perlinNoise.cpp $(Release_Include_Path) > gccRelease/jhlib/perlinNoise.d

# Compiles file jhlib/sData.cpp for the Release configuration...
-include gccRelease/jhlib/sData.d
gccRelease/jhlib/sData.o: jhlib/sData.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/sData.cpp $(Release_Include_Path) -o gccRelease/jhlib/sData.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/sData.cpp $(Release_Include_Path) > gccRelease/jhlib/sData.d

# Compiles file jhlib/simpleHTTP.cpp for the Release configuration...
-include gccRelease/jhlib/simpleHTTP.d
gccRelease/jhlib/simpleHTTP.o: jhlib/simpleHTTP.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/simpleHTTP.cpp $(Release_Include_Path) -o gccRelease/jhlib/simpleHTTP.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/simpleHTTP.cpp $(Release_Include_Path) > gccRelease/jhlib/simpleHTTP.d

# Compiles file jhlib/simpleList.cpp for the Release configuration...
-include gccRelease/jhlib/simpleList.d
gccRelease/jhlib/simpleList.o: jhlib/simpleList.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/simpleList.cpp $(Release_Include_Path) -o gccRelease/jhlib/simpleList.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/simpleList.cpp $(Release_Include_Path) > gccRelease/jhlib/simpleList.d

# Compiles file jhlib/streamWrapper.cpp for the Release configuration...
-include gccRelease/jhlib/streamWrapper.d
gccRelease/jhlib/streamWrapper.o: jhlib/streamWrapper.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/streamWrapper.cpp $(Release_Include_Path) -o gccRelease/jhlib/streamWrapper.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/streamWrapper.cpp $(Release_Include_Path) > gccRelease/jhlib/streamWrapper.d

# Compiles file jhlib/tgaLib.cpp for the Release configuration...
-include gccRelease/jhlib/tgaLib.d
gccRelease/jhlib/tgaLib.o: jhlib/tgaLib.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/tgaLib.cpp $(Release_Include_Path) -o gccRelease/jhlib/tgaLib.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/tgaLib.cpp $(Release_Include_Path) > gccRelease/jhlib/tgaLib.d

# Compiles file ripemd160.cpp for the Release configuration...
-include gccRelease/ripemd160.d
gccRelease/ripemd160.o: ripemd160.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ripemd160.cpp $(Release_Include_Path) -o gccRelease/ripemd160.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ripemd160.cpp $(Release_Include_Path) > gccRelease/ripemd160.d

# Compiles file sha256.cpp for the Release configuration...
-include gccRelease/sha256.d
gccRelease/sha256.o: sha256.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c sha256.cpp $(Release_Include_Path) -o gccRelease/sha256.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM sha256.cpp $(Release_Include_Path) > gccRelease/sha256.d

# Compiles file includes/openssl/applink.c for the Release configuration...
-include gccRelease/includes/openssl/applink.d
gccRelease/includes/openssl/applink.o: includes/openssl/applink.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c includes/openssl/applink.c $(Release_Include_Path) -o gccRelease/includes/openssl/applink.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM includes/openssl/applink.c $(Release_Include_Path) > gccRelease/includes/openssl/applink.d

# Compiles file jsonBuilder.cpp for the Release configuration...
-include gccRelease/jsonBuilder.d
gccRelease/jsonBuilder.o: jsonBuilder.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jsonBuilder.cpp $(Release_Include_Path) -o gccRelease/jsonBuilder.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jsonBuilder.cpp $(Release_Include_Path) > gccRelease/jsonBuilder.d

# Compiles file jsonClient.cpp for the Release configuration...
-include gccRelease/jsonClient.d
gccRelease/jsonClient.o: jsonClient.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jsonClient.cpp $(Release_Include_Path) -o gccRelease/jsonClient.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jsonClient.cpp $(Release_Include_Path) > gccRelease/jsonClient.d

# Compiles file jsonObject.cpp for the Release configuration...
-include gccRelease/jsonObject.d
gccRelease/jsonObject.o: jsonObject.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jsonObject.cpp $(Release_Include_Path) -o gccRelease/jsonObject.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jsonObject.cpp $(Release_Include_Path) > gccRelease/jsonObject.d

# Compiles file jsonParser.cpp for the Release configuration...
-include gccRelease/jsonParser.d
gccRelease/jsonParser.o: jsonParser.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jsonParser.cpp $(Release_Include_Path) -o gccRelease/jsonParser.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jsonParser.cpp $(Release_Include_Path) > gccRelease/jsonParser.d

# Compiles file jsonrpc.cpp for the Release configuration...
-include gccRelease/jsonrpc.d
gccRelease/jsonrpc.o: jsonrpc.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jsonrpc.cpp $(Release_Include_Path) -o gccRelease/jsonrpc.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jsonrpc.cpp $(Release_Include_Path) > gccRelease/jsonrpc.d

# Compiles file xptClient.cpp for the Release configuration...
-include gccRelease/xptClient.d
gccRelease/xptClient.o: xptClient.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c xptClient.cpp $(Release_Include_Path) -o gccRelease/xptClient.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM xptClient.cpp $(Release_Include_Path) > gccRelease/xptClient.d

# Compiles file xptClientPacketHandler.cpp for the Release configuration...
-include gccRelease/xptClientPacketHandler.d
gccRelease/xptClientPacketHandler.o: xptClientPacketHandler.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c xptClientPacketHandler.cpp $(Release_Include_Path) -o gccRelease/xptClientPacketHandler.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM xptClientPacketHandler.cpp $(Release_Include_Path) > gccRelease/xptClientPacketHandler.d

# Compiles file xptPacketbuffer.cpp for the Release configuration...
-include gccRelease/xptPacketbuffer.d
gccRelease/xptPacketbuffer.o: xptPacketbuffer.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c xptPacketbuffer.cpp $(Release_Include_Path) -o gccRelease/xptPacketbuffer.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM xptPacketbuffer.cpp $(Release_Include_Path) > gccRelease/xptPacketbuffer.d

# Compiles file xptServer.cpp for the Release configuration...
-include gccRelease/xptServer.d
gccRelease/xptServer.o: xptServer.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c xptServer.cpp $(Release_Include_Path) -o gccRelease/xptServer.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM xptServer.cpp $(Release_Include_Path) > gccRelease/xptServer.d

# Compiles file xptServerPacketHandler.cpp for the Release configuration...
-include gccRelease/xptServerPacketHandler.d
gccRelease/xptServerPacketHandler.o: xptServerPacketHandler.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c xptServerPacketHandler.cpp $(Release_Include_Path) -o gccRelease/xptServerPacketHandler.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM xptServerPacketHandler.cpp $(Release_Include_Path) > gccRelease/xptServerPacketHandler.d

# Builds the Release configuration...
.PHONY: Release
Release: create_folders x64/gccRelease/bn2.o x64/gccRelease/bn2_div.o x64/gccRelease/main.o x64/gccRelease/miner.o x64/gccRelease/prime.o x64/gccRelease/jhlib/bmp.o x64/gccRelease/jhlib/customBuffer.o x64/gccRelease/jhlib/fastSorter.o x64/gccRelease/jhlib/fastString.o x64/gccRelease/jhlib/fastString_eprintf.o x64/gccRelease/jhlib/fileMgr.o x64/gccRelease/jhlib/fMath.o x64/gccRelease/jhlib/hashTable_uint32.o x64/gccRelease/jhlib/msgQueue.o x64/gccRelease/jhlib/packetBuffer.o x64/gccRelease/jhlib/perlinNoise.o x64/gccRelease/jhlib/sData.o x64/gccRelease/jhlib/simpleHTTP.o x64/gccRelease/jhlib/simpleList.o x64/gccRelease/jhlib/streamWrapper.o x64/gccRelease/jhlib/tgaLib.o x64/gccRelease/ripemd160.o x64/gccRelease/sha256.o x64/gccRelease/includes/openssl/applink.o x64/gccRelease/jsonBuilder.o x64/gccRelease/jsonClient.o x64/gccRelease/jsonObject.o x64/gccRelease/jsonParser.o x64/gccRelease/jsonrpc.o x64/gccRelease/xptClient.o x64/gccRelease/xptClientPacketHandler.o x64/gccRelease/xptPacketbuffer.o x64/gccRelease/xptServer.o x64/gccRelease/xptServerPacketHandler.o 
	g++ x64/gccRelease/bn2.o x64/gccRelease/bn2_div.o x64/gccRelease/main.o x64/gccRelease/miner.o x64/gccRelease/prime.o x64/gccRelease/jhlib/bmp.o x64/gccRelease/jhlib/customBuffer.o x64/gccRelease/jhlib/fastSorter.o x64/gccRelease/jhlib/fastString.o x64/gccRelease/jhlib/fastString_eprintf.o x64/gccRelease/jhlib/fileMgr.o x64/gccRelease/jhlib/fMath.o x64/gccRelease/jhlib/hashTable_uint32.o x64/gccRelease/jhlib/msgQueue.o x64/gccRelease/jhlib/packetBuffer.o x64/gccRelease/jhlib/perlinNoise.o x64/gccRelease/jhlib/sData.o x64/gccRelease/jhlib/simpleHTTP.o x64/gccRelease/jhlib/simpleList.o x64/gccRelease/jhlib/streamWrapper.o x64/gccRelease/jhlib/tgaLib.o x64/gccRelease/ripemd160.o x64/gccRelease/sha256.o x64/gccRelease/includes/openssl/applink.o x64/gccRelease/jsonBuilder.o x64/gccRelease/jsonClient.o x64/gccRelease/jsonObject.o x64/gccRelease/jsonParser.o x64/gccRelease/jsonrpc.o x64/gccRelease/xptClient.o x64/gccRelease/xptClientPacketHandler.o x64/gccRelease/xptPacketbuffer.o x64/gccRelease/xptServer.o x64/gccRelease/xptServerPacketHandler.o  $(Release_Library_Path) $(Release_Libraries) -Wl,-rpath,./ -o ..//gccbin/jhPrimeminer.exe

# Compiles file bn2.cpp for the Release configuration...
-include x64/gccRelease/bn2.d
x64/gccRelease/bn2.o: bn2.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c bn2.cpp $(Release_Include_Path) -o x64/gccRelease/bn2.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM bn2.cpp $(Release_Include_Path) > x64/gccRelease/bn2.d

# Compiles file bn2_div.cpp for the Release configuration...
-include x64/gccRelease/bn2_div.d
x64/gccRelease/bn2_div.o: bn2_div.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c bn2_div.cpp $(Release_Include_Path) -o x64/gccRelease/bn2_div.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM bn2_div.cpp $(Release_Include_Path) > x64/gccRelease/bn2_div.d

# Compiles file main.cpp for the Release configuration...
-include x64/gccRelease/main.d
x64/gccRelease/main.o: main.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c main.cpp $(Release_Include_Path) -o x64/gccRelease/main.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM main.cpp $(Release_Include_Path) > x64/gccRelease/main.d

# Compiles file miner.cpp for the Release configuration...
-include x64/gccRelease/miner.d
x64/gccRelease/miner.o: miner.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c miner.cpp $(Release_Include_Path) -o x64/gccRelease/miner.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM miner.cpp $(Release_Include_Path) > x64/gccRelease/miner.d

# Compiles file prime.cpp for the Release configuration...
-include x64/gccRelease/prime.d
x64/gccRelease/prime.o: prime.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c prime.cpp $(Release_Include_Path) -o x64/gccRelease/prime.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM prime.cpp $(Release_Include_Path) > x64/gccRelease/prime.d

# Compiles file jhlib/bmp.cpp for the Release configuration...
-include x64/gccRelease/jhlib/bmp.d
x64/gccRelease/jhlib/bmp.o: jhlib/bmp.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/bmp.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/bmp.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/bmp.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/bmp.d

# Compiles file jhlib/customBuffer.cpp for the Release configuration...
-include x64/gccRelease/jhlib/customBuffer.d
x64/gccRelease/jhlib/customBuffer.o: jhlib/customBuffer.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/customBuffer.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/customBuffer.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/customBuffer.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/customBuffer.d

# Compiles file jhlib/fastSorter.cpp for the Release configuration...
-include x64/gccRelease/jhlib/fastSorter.d
x64/gccRelease/jhlib/fastSorter.o: jhlib/fastSorter.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/fastSorter.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/fastSorter.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/fastSorter.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/fastSorter.d

# Compiles file jhlib/fastString.cpp for the Release configuration...
-include x64/gccRelease/jhlib/fastString.d
x64/gccRelease/jhlib/fastString.o: jhlib/fastString.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/fastString.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/fastString.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/fastString.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/fastString.d

# Compiles file jhlib/fastString_eprintf.cpp for the Release configuration...
-include x64/gccRelease/jhlib/fastString_eprintf.d
x64/gccRelease/jhlib/fastString_eprintf.o: jhlib/fastString_eprintf.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/fastString_eprintf.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/fastString_eprintf.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/fastString_eprintf.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/fastString_eprintf.d

# Compiles file jhlib/fileMgr.cpp for the Release configuration...
-include x64/gccRelease/jhlib/fileMgr.d
x64/gccRelease/jhlib/fileMgr.o: jhlib/fileMgr.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/fileMgr.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/fileMgr.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/fileMgr.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/fileMgr.d

# Compiles file jhlib/fMath.cpp for the Release configuration...
-include x64/gccRelease/jhlib/fMath.d
x64/gccRelease/jhlib/fMath.o: jhlib/fMath.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/fMath.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/fMath.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/fMath.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/fMath.d

# Compiles file jhlib/hashTable_uint32.cpp for the Release configuration...
-include x64/gccRelease/jhlib/hashTable_uint32.d
x64/gccRelease/jhlib/hashTable_uint32.o: jhlib/hashTable_uint32.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/hashTable_uint32.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/hashTable_uint32.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/hashTable_uint32.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/hashTable_uint32.d

# Compiles file jhlib/msgQueue.cpp for the Release configuration...
-include x64/gccRelease/jhlib/msgQueue.d
x64/gccRelease/jhlib/msgQueue.o: jhlib/msgQueue.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/msgQueue.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/msgQueue.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/msgQueue.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/msgQueue.d

# Compiles file jhlib/packetBuffer.cpp for the Release configuration...
-include x64/gccRelease/jhlib/packetBuffer.d
x64/gccRelease/jhlib/packetBuffer.o: jhlib/packetBuffer.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/packetBuffer.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/packetBuffer.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/packetBuffer.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/packetBuffer.d

# Compiles file jhlib/perlinNoise.cpp for the Release configuration...
-include x64/gccRelease/jhlib/perlinNoise.d
x64/gccRelease/jhlib/perlinNoise.o: jhlib/perlinNoise.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/perlinNoise.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/perlinNoise.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/perlinNoise.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/perlinNoise.d

# Compiles file jhlib/sData.cpp for the Release configuration...
-include x64/gccRelease/jhlib/sData.d
x64/gccRelease/jhlib/sData.o: jhlib/sData.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/sData.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/sData.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/sData.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/sData.d

# Compiles file jhlib/simpleHTTP.cpp for the Release configuration...
-include x64/gccRelease/jhlib/simpleHTTP.d
x64/gccRelease/jhlib/simpleHTTP.o: jhlib/simpleHTTP.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/simpleHTTP.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/simpleHTTP.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/simpleHTTP.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/simpleHTTP.d

# Compiles file jhlib/simpleList.cpp for the Release configuration...
-include x64/gccRelease/jhlib/simpleList.d
x64/gccRelease/jhlib/simpleList.o: jhlib/simpleList.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/simpleList.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/simpleList.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/simpleList.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/simpleList.d

# Compiles file jhlib/streamWrapper.cpp for the Release configuration...
-include x64/gccRelease/jhlib/streamWrapper.d
x64/gccRelease/jhlib/streamWrapper.o: jhlib/streamWrapper.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/streamWrapper.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/streamWrapper.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/streamWrapper.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/streamWrapper.d

# Compiles file jhlib/tgaLib.cpp for the Release configuration...
-include x64/gccRelease/jhlib/tgaLib.d
x64/gccRelease/jhlib/tgaLib.o: jhlib/tgaLib.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jhlib/tgaLib.cpp $(Release_Include_Path) -o x64/gccRelease/jhlib/tgaLib.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jhlib/tgaLib.cpp $(Release_Include_Path) > x64/gccRelease/jhlib/tgaLib.d

# Compiles file ripemd160.cpp for the Release configuration...
-include x64/gccRelease/ripemd160.d
x64/gccRelease/ripemd160.o: ripemd160.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c ripemd160.cpp $(Release_Include_Path) -o x64/gccRelease/ripemd160.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM ripemd160.cpp $(Release_Include_Path) > x64/gccRelease/ripemd160.d

# Compiles file sha256.cpp for the Release configuration...
-include x64/gccRelease/sha256.d
x64/gccRelease/sha256.o: sha256.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c sha256.cpp $(Release_Include_Path) -o x64/gccRelease/sha256.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM sha256.cpp $(Release_Include_Path) > x64/gccRelease/sha256.d

# Compiles file includes/openssl/applink.c for the Release configuration...
-include x64/gccRelease/includes/openssl/applink.d
x64/gccRelease/includes/openssl/applink.o: includes/openssl/applink.c
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c includes/openssl/applink.c $(Release_Include_Path) -o x64/gccRelease/includes/openssl/applink.o
	$(C_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM includes/openssl/applink.c $(Release_Include_Path) > x64/gccRelease/includes/openssl/applink.d

# Compiles file jsonBuilder.cpp for the Release configuration...
-include x64/gccRelease/jsonBuilder.d
x64/gccRelease/jsonBuilder.o: jsonBuilder.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jsonBuilder.cpp $(Release_Include_Path) -o x64/gccRelease/jsonBuilder.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jsonBuilder.cpp $(Release_Include_Path) > x64/gccRelease/jsonBuilder.d

# Compiles file jsonClient.cpp for the Release configuration...
-include x64/gccRelease/jsonClient.d
x64/gccRelease/jsonClient.o: jsonClient.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jsonClient.cpp $(Release_Include_Path) -o x64/gccRelease/jsonClient.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jsonClient.cpp $(Release_Include_Path) > x64/gccRelease/jsonClient.d

# Compiles file jsonObject.cpp for the Release configuration...
-include x64/gccRelease/jsonObject.d
x64/gccRelease/jsonObject.o: jsonObject.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jsonObject.cpp $(Release_Include_Path) -o x64/gccRelease/jsonObject.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jsonObject.cpp $(Release_Include_Path) > x64/gccRelease/jsonObject.d

# Compiles file jsonParser.cpp for the Release configuration...
-include x64/gccRelease/jsonParser.d
x64/gccRelease/jsonParser.o: jsonParser.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jsonParser.cpp $(Release_Include_Path) -o x64/gccRelease/jsonParser.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jsonParser.cpp $(Release_Include_Path) > x64/gccRelease/jsonParser.d

# Compiles file jsonrpc.cpp for the Release configuration...
-include x64/gccRelease/jsonrpc.d
x64/gccRelease/jsonrpc.o: jsonrpc.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c jsonrpc.cpp $(Release_Include_Path) -o x64/gccRelease/jsonrpc.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM jsonrpc.cpp $(Release_Include_Path) > x64/gccRelease/jsonrpc.d

# Compiles file xptClient.cpp for the Release configuration...
-include x64/gccRelease/xptClient.d
x64/gccRelease/xptClient.o: xptClient.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c xptClient.cpp $(Release_Include_Path) -o x64/gccRelease/xptClient.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM xptClient.cpp $(Release_Include_Path) > x64/gccRelease/xptClient.d

# Compiles file xptClientPacketHandler.cpp for the Release configuration...
-include x64/gccRelease/xptClientPacketHandler.d
x64/gccRelease/xptClientPacketHandler.o: xptClientPacketHandler.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c xptClientPacketHandler.cpp $(Release_Include_Path) -o x64/gccRelease/xptClientPacketHandler.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM xptClientPacketHandler.cpp $(Release_Include_Path) > x64/gccRelease/xptClientPacketHandler.d

# Compiles file xptPacketbuffer.cpp for the Release configuration...
-include x64/gccRelease/xptPacketbuffer.d
x64/gccRelease/xptPacketbuffer.o: xptPacketbuffer.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c xptPacketbuffer.cpp $(Release_Include_Path) -o x64/gccRelease/xptPacketbuffer.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM xptPacketbuffer.cpp $(Release_Include_Path) > x64/gccRelease/xptPacketbuffer.d

# Compiles file xptServer.cpp for the Release configuration...
-include x64/gccRelease/xptServer.d
x64/gccRelease/xptServer.o: xptServer.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c xptServer.cpp $(Release_Include_Path) -o x64/gccRelease/xptServer.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM xptServer.cpp $(Release_Include_Path) > x64/gccRelease/xptServer.d

# Compiles file xptServerPacketHandler.cpp for the Release configuration...
-include x64/gccRelease/xptServerPacketHandler.d
x64/gccRelease/xptServerPacketHandler.o: xptServerPacketHandler.cpp
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -c xptServerPacketHandler.cpp $(Release_Include_Path) -o x64/gccRelease/xptServerPacketHandler.o
	$(CPP_COMPILER) $(Release_Preprocessor_Definitions) $(Release_Compiler_Flags) -MM xptServerPacketHandler.cpp $(Release_Include_Path) > x64/gccRelease/xptServerPacketHandler.d

# Creates the intermediate and output folders for each configuration...
.PHONY: create_folders
create_folders:
	mkdir -p gccDebug
	mkdir -p ..//gccbin
	mkdir -p x64/gccDebug
	mkdir -p ../x64/gccDebug
	mkdir -p gccRelease
	mkdir -p ..//gccbin
	mkdir -p x64/gccRelease
	mkdir -p ..//gccbin

# Cleans intermediate and output files (objects, libraries, executables)...
.PHONY: clean
clean:
	rm -f gccDebug/*.o
	rm -f gccDebug/*.d
	rm -f ..//gccbin/*.a
	rm -f ..//gccbin/*.so
	rm -f ..//gccbin/*.dll
	rm -f ..//gccbin/*.exe
	rm -f x64/gccDebug/*.o
	rm -f x64/gccDebug/*.d
	rm -f ../x64/gccDebug/*.a
	rm -f ../x64/gccDebug/*.so
	rm -f ../x64/gccDebug/*.dll
	rm -f ../x64/gccDebug/*.exe
	rm -f gccRelease/*.o
	rm -f gccRelease/*.d
	rm -f ..//gccbin/*.a
	rm -f ..//gccbin/*.so
	rm -f ..//gccbin/*.dll
	rm -f ..//gccbin/*.exe
	rm -f x64/gccRelease/*.o
	rm -f x64/gccRelease/*.d
	rm -f ..//gccbin/*.a
	rm -f ..//gccbin/*.so
	rm -f ..//gccbin/*.dll
	rm -f ..//gccbin/*.exe

