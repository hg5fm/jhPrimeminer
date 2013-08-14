jhPrimeminer
============

An attempt at porting jhPrimeminer to *nix/osx. Very early stages, slightly working state.

To build from source you need openssl and libgmp

To install it, just run make in the root dir of the project, note: you need gnu make, so if you're on FreeBSD you need to use 'gmake'. You should then get a jhprimeminer binary in that same folder.

I've managed to compile it on OSX 10.8.x, FreeBSD 9.x (64 bit) and failed miserably on ubuntu 12.10 (32 bit), but it builds and runs on the raspberry pi. 20ish 4 chains/h such an awe-inspiring monster of a machine! :D