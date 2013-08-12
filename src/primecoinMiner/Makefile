CXX = g++
CFLAGS = -mtune=native -O2 -Wall -Wextra

# on linux you need to change -lpthread to -pthread and you need to add -lrt
# if the linker complains about not finding boost make sure you have the -mt
# version of libraries, else remove -mt
LIBS = -lgmp -lgmpxx -lcrypto -lssl -pthread -lboost_chrono-mt -lboost_system-mt -L./jhlib/ -ljh
LIBPATHS = -L/usr/local/lib -L/usr/lib
INCLUDEPATHS = -I/usr/local/include

OBJS = \
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
