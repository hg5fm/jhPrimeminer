CXX = g++
CFLAGS = -mtune=native -O3 -Wall -Wextra

# on linux you will probably need to add -lrt and change -pthread to -lpthread
LIBS = -lgmp -lgmpxx -lcrypto -lssl -pthread -ljh
LIBPATHS = -L/usr/local/lib -L/usr/lib -L./jhlib
INCLUDEPATHS = -I/usr/local/include -I/usr/include

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
  
obj/%.o: %.cpp
	$(CXX) -c $(CFLAGS) $(INCLUDEPATHS) $< -o $@ 

jhprimeminer: $(OBJS:obj/%=obj/%)
	$(CXX) $(CFLAGS) $(LIBPATHS) $(LIBS) $(INCLUDEPATHS) -o $@ $^

clean:
	-rm -f jhprimeminer
	-rm -f obj/*.o
