CXX = g++
CFLAGS = -mtune=native -O2 -Wall -Wextra
LIBS = -lgmp -lssl
LIBPATHS = -L/usr/local/lib
INCLUDEPATHS = -I/usr/local/include
SRCDIR = primecoinMiner
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

obj/%.o: %.cpp
	$(CXX) -c $(CFLAGS) $(INCLUDEPATHS) -o $@ $(SRCDIR)/$<

all: jhprimeminer

jhprimeminer: $(OBJS:obj/%=obj/%)
	$(CXX) $(CFLAGS) $(LIBPATHS) $(LIBS) $(INCLUDEPATHS) $(SRCDIR) -o $@ $^

clean:
	-rm -f jhprimeminer
	-rm -rf obj
