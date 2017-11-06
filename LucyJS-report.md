"
I'm trying npm install in different linux versions and I found out that, because we are binding with a statuc libraries .a files, buildtools versions of the guest system must exactly much buildtools used to generate those .a files. For example, in debian jessie (LTS) it will simply fail, I'm trying with this docker file: 

"




errors: 

jessie : 

ERROR: 
  SOLINK_MODULE(target) Release/obj.target/lucy.node
/usr/bin/ld: /workspace/external/libs/linux/liblucy.a(IndexSearcher.o): unrecognized relocation (0x2a) in section `.text'
/usr/bin/ld: final link failed: Bad value
collect2: error: ld returned 1 exit status
lucy.target.mk:136: recipe for target 'Release/obj.target/lucy.node' failed
make: *** [Release/obj.target/lucy.node] Error 1
make: Leaving directory '/workspace/build'
gyp ERR! build error 
gyp ERR! stack Error: `make` failed with exit code: 2
