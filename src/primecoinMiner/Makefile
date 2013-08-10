CXX = g++
CFLAGS = -mtune=native -O2 -Wall -Wextra -std=c++0x -lrt -static
LIBS = -lgmp -lgmpxx -lcrypto -lssl -pthread
LIBPATHS = -L/usr/local/lib -L/usr/lib
INCLUDEPATHS = -I/usr/local/include

OBJS = \
	jhlib/customBuffer.o \
	jhlib/fastString.o \
	jhlib/fastString_eprintf.o \
	jhlib/hashTable_uint32.o \
	jhlib/packetBuffer.o \
	jhlib/simpleHTTP.o \
	jhlib/simpleList.o \
	obj/bn2.o \
	obj/bn2_div.o \
	obj/jsonBuilder.o \
	obj/jsonClient.o \
	obj/jsonObject.o \
	obj/jsonParser.o \
	obj/jsonrpc.o \
	obj/prime.o \
	obj/main.o \
	obj/miner.o \
	obj/ripemd160.o \
	obj/sha256.o \
	obj/xptClient.o \
	obj/xptClientPacketHandler.o \
	obj/xptPacketbuffer.o \
	obj/xptServer.o \
	obj/xptServerPacketHandler.o

all: jhprimeminer
  
obj/%.o: %.cpp
	$(CXX) -c $(CFLAGS) $(LIBPATHS) $(LIBS) $(INCLUDEPATHS) $< -o $@ 

jhprimeminer: $(OBJS:obj/%=obj/%)
	$(CXX) $(CFLAGS) $(LIBPATHS) $(LIBS) $(INCLUDEPATHS) -o $@ $^

clean:
	-rm -f jhprimeminer
	-rm -f obj/*.o
	-rm -f jhlib/*.o
