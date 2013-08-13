CXX = g++
CFLAGS = -mtune=native -O3 -Wall -Wextra

# on linux you will probably need to add -lrt and change -pthread to -lpthread
LIBS = -lgmp -lgmpxx -lcrypto -lssl -pthread -lboost_system -lboost_chrono
LIBPATHS = -L/usr/local/lib -L/usr/lib
INCLUDEPATHS = -I/usr/local/include -I/usr/include

JHLIB = jhlib/customBuffer.o \
	jhlib/fastString_eprintf.o \
	jhlib/packetBuffer.o \
	jhlib/fastString.o \
	jhlib/hashTable_uint32.o \
	jhlib/simpleList.o

OBJS = \
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
  
jhlib/%.o: jhlib/%.cpp
	$(CXX) -c $(CFLAGS) -I./jhlib $< -o $@

obj/%.o: %.cpp
	$(CXX) -c $(CFLAGS) $(INCLUDEPATHS) $< -o $@ 

jhprimeminer: $(OBJS:obj/%=obj/%) $(JHLIB:jhlib/%=jhlib/%)
	$(CXX) $(CFLAGS) $(LIBPATHS) $(LIBS) $(INCLUDEPATHS) -o $@ $^

clean:
	-rm -f jhprimeminer
	-rm -f obj/*.o