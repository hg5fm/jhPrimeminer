CXX = g++
CFLAGS = -mtune=native -O3 -Wall -Wextra

# on linux you will probably need to add -lrt and change -pthread to -lpthread
# on osx you might need to add -mt to end the boost library names
LIBS = -lgmp -lgmpxx -lcrypto -lssl -pthread -lboost_system -lboost_chrono
LIBPATHS = -L/usr/local/lib -L/usr/lib
INCLUDEPATHS = -I/usr/local/include -I/usr/include

JHLIB = src/jhlib/customBuffer.o \
	src/jhlib/fastString_eprintf.o \
	src/jhlib/packetBuffer.o \
	src/jhlib/fastString.o \
	src/jhlib/hashTable_uint32.o \
	src/jhlib/simpleList.o

OBJS = \
	src/bn2.o \
	src/bn2_div.o \
	src/jsonBuilder.o \
	src/jsonClient.o \
	src/jsonObject.o \
	src/jsonParser.o \
	src/jsonrpc.o \
	src/prime.o \
	src/main.o \
	src/miner.o \
	src/ripemd160.o \
	src/sha256.o \
	src/xptClient.o \
	src/xptClientPacketHandler.o \
	src/xptPacketbuffer.o \
	src/xptServer.o \
	src/xptServerPacketHandler.o

all: jhprimeminer
  
src/jhlib/%.o: src/jhlib/%.cpp
	$(CXX) -c $(CFLAGS) -I./src/jhlib $< -o $@

src/%.o: src/%.cpp
	$(CXX) -c $(CFLAGS) $(INCLUDEPATHS) $< -o $@ 

jhprimeminer: $(OBJS:src/%=src/%) $(JHLIB:src/jhlib/%=src/jhlib/%)
	$(CXX) $(CFLAGS) $(LIBPATHS) $(LIBS) $(INCLUDEPATHS) -o $@ $^

clean:
	-rm -f jhprimeminer
	-rm -f src/*.o
	-rm -f src/jhlib/*.o
