CXX = g++
CFLAGS = -mtune=native -O2 -Wall -Wextra -pedantic -std=c++0x
LIBS = -lgmp -lssl
LIBPATHS = -L/usr/local/lib
INCLUDEPATHS = -I/usr/local/include

OBJS = \
	obj/jsonBuilder.o \
	obj/jsonClient.o \
	obj/jsonObject.o \
	obj/jsonParser.o \
	obj/jsonrpc.o \
	obj/main.o \
	obj/miner.o \
	obj/prime.o \
	obj/ripemd160.o \
	obj/sha256.o \
	obj/xptClient.o \
	obj/xptClientPacketHandler.o \
	obj/xptPacketbuffer.o \
	obj/xptServer.o \
	obj/xptServerPacketHandler.o

all: jhprimeminer
  
obj/%.o: %.cpp
	$(CXX) -c $(CFLAGS) $(LIBPATHS) $(INCLUDEPATHS) $< -o $@ 

jhprimeminer: $(OBJS:obj/%=obj/%)
	$(CXX) $(CFLAGS) $(LIBPATHS) $(LIBS) $(INCLUDEPATHS) -o $@ $^

clean:
	-rm -f jhprimeminer
	-rm -f obj/*
