CXX = g++
CFLAGS = -mtune=native -O3 -Wall -Wextra

# on linux you will probably need to add -lrt and change -pthread to -lpthread
# on osx you might need to add -mt to end the boost library names
LIBS = -lgmp -lgmpxx -lcrypto -lssl -pthread -lboost_system -lboost_chrono
LIBPATHS = -L/usr/local/lib -L/usr/lib
INCLUDEPATHS = -I/usr/local/include -I/usr/include

JHLIB = src/primecoinMiner/jhlib/customBuffer.o \
	src/primecoinMiner/jhlib/fastString_eprintf.o \
	src/primecoinMiner/jhlib/packetBuffer.o \
	src/primecoinMiner/jhlib/fastString.o \
	src/primecoinMiner/jhlib/hashTable_uint32.o \
	src/primecoinMiner/jhlib/simpleList.o

OBJS = \
	src/primecoinMiner/bn2.o \
	src/primecoinMiner/bn2_div.o \
	src/primecoinMiner/jsonBuilder.o \
	src/primecoinMiner/jsonClient.o \
	src/primecoinMiner/jsonObject.o \
	src/primecoinMiner/jsonParser.o \
	src/primecoinMiner/jsonrpc.o \
	src/primecoinMiner/prime.o \
	src/primecoinMiner/main.o \
	src/primecoinMiner/miner.o \
	src/primecoinMiner/ripemd160.o \
	src/primecoinMiner/sha256.o \
	src/primecoinMiner/xptClient.o \
	src/primecoinMiner/xptClientPacketHandler.o \
	src/primecoinMiner/xptPacketbuffer.o \
	src/primecoinMiner/xptServer.o \
	src/primecoinMiner/xptServerPacketHandler.o

all: jhprimeminer
  
src/primecoinMiner/jhlib/%.o: src/primecoinMiner/jhlib/%.cpp
	$(CXX) -c $(CFLAGS) -I./src/primecoinMiner/jhlib $< -o $@

src/primecoinMiner/%.o: src/primecoinMiner/%.cpp
	$(CXX) -c $(CFLAGS) $(INCLUDEPATHS) $< -o $@ 

jhprimeminer: $(OBJS:src/primecoinMiner/%=src/primecoinMiner/%) $(JHLIB:src/primecoinMiner/jhlib/%=src/primecoinMiner/jhlib/%)
	$(CXX) $(CFLAGS) $(LIBPATHS) $(LIBS) $(INCLUDEPATHS) -o $@ $^

clean:
	-rm -f jhprimeminer
	-rm -f src/primecoinMiner/*.o
	-rm -f src/primecoinMiner/jhlib/*.o