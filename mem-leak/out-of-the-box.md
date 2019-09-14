```
$ ./build-and-run.sh

[==========] Running 1 test from 1 test case.
[----------] Global test environment set-up.
[----------] 1 test from MemLeakTest
[ RUN      ] MemLeakTest.MemLeak
[       OK ] MemLeakTest.MemLeak (0 ms)
[----------] 1 test from MemLeakTest (0 ms total)

[----------] Global test environment tear-down
[==========] 1 test from 1 test case ran. (0 ms total)
[  PASSED  ] 1 test.

=================================================================
==24735==ERROR: LeakSanitizer: detected memory leaks

Direct leak of 4 byte(s) in 1 object(s) allocated from:
    #0 0x10f8ad5e6 in wrap__Znwm (libclang_rt.lsan_osx_dynamic.dylib:x86_64h+0x65e6)
    #1 0x10f7e5715 in MemLeakTest_MemLeak_Test::TestBody() (a.out:x86_64+0x100069715)
    #2 0x10f7bf06d in void testing::internal::HandleSehExceptionsInMethodIfSupported<testing::Test, void>(testing::Test*, void (testing::Test::*)(), char const*) (a.out:x86_64+0x10004306d)
    #3 0x10f78aeba in void testing::internal::HandleExceptionsInMethodIfSupported<testing::Test, void>(testing::Test*, void (testing::Test::*)(), char const*) (a.out:x86_64+0x10000eeba)
    #4 0x10f78ade5 in testing::Test::Run() (a.out:x86_64+0x10000ede5)
    #5 0x10f78c004 in testing::TestInfo::Run() (a.out:x86_64+0x100010004)
    #6 0x10f78cede in testing::TestCase::Run() (a.out:x86_64+0x100010ede)
    #7 0x10f798d23 in testing::internal::UnitTestImpl::RunAllTests() (a.out:x86_64+0x10001cd23)
    #8 0x10f7c3e3d in bool testing::internal::HandleSehExceptionsInMethodIfSupported<testing::internal::UnitTestImpl, bool>(testing::internal::UnitTestImpl*, bool (testing::internal::UnitTestImpl::*)(), char const*) (a.out:x86_64+0x100047e3d)
    #9 0x10f7987fa in bool testing::internal::HandleExceptionsInMethodIfSupported<testing::internal::UnitTestImpl, bool>(testing::internal::UnitTestImpl*, bool (testing::internal::UnitTestImpl::*)(), char const*) (a.out:x86_64+0x10001c7fa)
    #10 0x10f7986cf in testing::UnitTest::Run() (a.out:x86_64+0x10001c6cf)
    #11 0x10f7e5770 in RUN_ALL_TESTS() (a.out:x86_64+0x100069770)
    #12 0x10f7e5757 in main (a.out:x86_64+0x100069757)
    #13 0x7fff7b65a3d4 in start (libdyld.dylib:x86_64+0x163d4)

SUMMARY: LeakSanitizer: 4 byte(s) leaked in 1 allocation(s).
```
