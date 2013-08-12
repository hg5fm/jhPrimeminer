#!/usr/bin/env python
files = [ 'jhlib/customBuffer.cpp', 'jhlib/fastString.cpp', 'jhlib/fastString_eprintf.cpp', 
          'jhlib/hashTable_uint32.cpp', 'jhlib/packetBuffer.cpp', 'jhlib/simpleList.cpp', 'bn2.cpp', 
          'bn2_div.cpp', 'jsonBuilder.cpp', 'jsonClient.cpp', 'jsonObject.cpp', 'jsonParser.cpp', 
          'jsonrpc.cpp', 'main.cpp', 'miner.cpp', 'prime.cpp', 'ripemd160.cpp', 'sha256.cpp', 
          'xptClient.cpp', 'xptClientPacketHandler.cpp', 'xptPacketbuffer.cpp', 'xptServer.cpp', 
          'xptServerPacketHandler.cpp']


from subprocess import call
for file in files:
  filename = file.split('.')[0]
  if '/' in filename:
    filename = filename.split('/')[1]
    call("g++ -mtune=native -O0 -g -Wno-deprecated -Wno-deprecated-declarations -o obj/%s.o -c jhlib/%s.cpp" % (filename, filename), shell=True)
  else:
    call("g++ -mtune=native -O0 -g -Wno-deprecated -Wno-deprecated-declarations -o obj/%s.o -c %s.cpp" % (filename, filename), shell=True)

#link
files2 = ["obj/%s" % (k.split('/')[1]) if "/" in k else "obj/%s" % (k) for k in files]
files2 = ' '.join([k.replace('cpp', 'o') for k in files2])
call("g++ -mtune=native -O0 -Wno-deprecated -Wno-deprecated-declarations -o jhprimeminer -lgmp -g -lgmpxx -lcrypto -lssl -pthread %s" % files2,shell=True)

