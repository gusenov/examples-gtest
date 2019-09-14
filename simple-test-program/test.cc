#include "gtest/gtest.h"
#include <string>

TEST(FooTest, Foo) {
  std::string foo("foo");
  EXPECT_STREQ("foo", foo.c_str());
}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
