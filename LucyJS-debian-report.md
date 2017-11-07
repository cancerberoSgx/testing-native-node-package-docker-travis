These are results trying to perform the following commands in LucyJS project on different debian systems:

  npm install
  npm test

# debian jessie

[Dockerfile](https://github.com/cancerberoSgx/testing-native-node-package-docker-travis/blob/master/jessie/Dockerfile)
npm install : *fails*

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
  ...


# debian stretch

[Dockerfile](https://github.com/cancerberoSgx/testing-native-node-package-docker-travis/blob/master/stretch/Dockerfile)
npm install : OK
npm test: *fails*

  Test Suites: 1 passed, 1 of 4 total
  Tests:       1 passed, 1 total
  Snapshots:   0 total
  Time:        0s*** Error in `/usr/bin/node': double free or corruption (out): 0x0000000003d8b5a0 ***
  ======= Backtrace: =========
  /lib/x86_64-linux-gnu/libc.so.6(+0x70bcb)[0x7fc274fe4bcb]
  /lib/x86_64-linux-gnu/libc.so.6(+0x76f96)[0x7fc274feaf96]
  /lib/x86_64-linux-gnu/libc.so.6(+0x777de)[0x7fc274feb7de]
  /usr/bin/node(_ZN2v88internal13GlobalHandles31DispatchPendingPhantomCallbacksEb+0xee)[0xe4362e]
  /usr/bin/node(_ZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS0_16GarbageCollectorENS_15GCCallbackFlagsE+0x2a)[0xe4389a]
  /usr/bin/node(_ZN2v88internal4Heap24PerformGarbageCollectionENS0_16GarbageCollectorENS_15GCCallbackFlagsE+0x237)[0xe72a47]
  /usr/bin/node[0xe73d38]
  /usr/bin/node(_ZN2v88internal4Heap36FinalizeIncrementalMarkingIfCompleteENS0_23GarbageCollectionReasonE+0x46)[0xe74a66]
  /usr/bin/node(_ZN2v88internal21IncrementalMarkingJob4Task11RunInternalEv+0xed)[0xe7646d]
  /usr/bin/node(_ZN2v88internal14CancelableTask3RunEv+0x36)[0xba8886]
  /usr/bin/node(_ZN4node12NodePlatform28FlushForegroundTasksInternalEv+0x1f4)[0x1237bb4]
  /usr/bin/node[0x141eeeb]
  /usr/bin/node[0x14308f8]
  /usr/bin/node(uv_run+0x156)[0x141f876]
  /usr/bin/node(_ZN4node5StartEP9uv_loop_siPKPKciS5_+0xc75)[0x11ef5f5]
  /usr/bin/node(_ZN4node5StartEiPPc+0x163)[0x11e8293]
  /lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xf1)[0x7fc274f942b1]
  /usr/bin/node[0x8959f1]
  ======= Memory map: ========
  00400000-01f5c000 r-xp 00000000 00:35 1543                               /usr/bin/node
  0215b000-02176000 rw-p 01b5b000 00:35 1543                               /usr/bin/node
  02176000-0218d000 rw-p 00000000 00:00 0
  03c4b000-03e42000 rw-p 00000000 00:00 0                                  [heap]
  29ea000000-29ea080000 rw-p 00000000 00:00 0
  a3ca600000-a3ca680000 rw-p 00000000 00:00 0
  ...


# Debian buster

[Dockerfile](https://github.com/cancerberoSgx/testing-native-node-package-docker-travis/blob/master/buster/Dockerfile)
npm install : OK
npm test: *fails*

Very similar to stretch:

  Test Suites: 1 passed, 1 of 4 total
  Tests:       1 passed, 1 total
  Snapshots:   0 total
  Time:        0s*** Error in `/usr/bin/node': double free or corruption (out): 0x0000000003d8b5a0 ***
  ======= Backtrace: =========
  /lib/x86_64-linux-gnu/libc.so.6(+0x70bcb)[0x7fc274fe4bcb]
  /lib/x86_64-linux-gnu/libc.so.6(+0x76f96)[0x7fc274feaf96]
  /lib/x86_64-linux-gnu/libc.so.6(+0x777de)[0x7fc274feb7de]
  /usr/bin/node(_ZN2v88internal13GlobalHandles31DispatchPendingPhantomCallbacksEb+0xee)[0xe4362e]
  /usr/bin/node(_ZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS0_16GarbageCollectorENS_15GCCallbackFlagsE+0x2a)[0xe4389a]
  /usr/bin/node(_ZN2v88internal4Heap24PerformGarbageCollectionENS0_16GarbageCollectorENS_15GCCallbackFlagsE+0x237)[0xe72a47]
  /usr/bin/node[0xe73d38]
  /usr/bin/node(_ZN2v88internal4Heap36FinalizeIncrementalMarkingIfCompleteENS0_23GarbageCollectionReasonE+0x46)[0xe74a66]
  /usr/bin/node(_ZN2v88internal21IncrementalMarkingJob4Task11RunInternalEv+0xed)[0xe7646d]
  /usr/bin/node(_ZN2v88internal14CancelableTask3RunEv+0x36)[0xba8886]
  /usr/bin/node(_ZN4node12NodePlatform28FlushForegroundTasksInternalEv+0x1f4)[0x1237bb4]
  /usr/bin/node[0x141eeeb]
  /usr/bin/node[0x14308f8]
  /usr/bin/node(uv_run+0x156)[0x141f876]
  /usr/bin/node(_ZN4node5StartEP9uv_loop_siPKPKciS5_+0xc75)[0x11ef5f5]
  /usr/bin/node(_ZN4node5StartEiPPc+0x163)[0x11e8293]
  /lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xf1)[0x7fc274f942b1]
  /usr/bin/node[0x8959f1]
  ======= Memory map: ========
  00400000-01f5c000 r-xp 00000000 00:35 1543                               /usr/bin/node
  0215b000-02176000 rw-p 01b5b000 00:35 1543                               /usr/bin/node
  02176000-0218d000 rw-p 00000000 00:00 0
  03c4b000-03e42000 rw-p 00000000 00:00 0                                  [heap]


# Debian sid

(https://github.com/cancerberoSgx/testing-native-node-package-docker-travis/blob/master/buster/Dockerfile)

has same software versions as buster :(

Fails the same way as buster
