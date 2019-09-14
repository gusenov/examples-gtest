#include "gtest/gtest.h"
#include <string>

TEST(MemLeakTest, MemLeak) {
    int *data = new int;
    *data = 15;
}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
