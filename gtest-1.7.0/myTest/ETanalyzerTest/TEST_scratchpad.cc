#include "gtest/gtest.h"
//classes to test
#include<string>
#include<vector>
#include<algorithm>

using namespace std;

TEST(test_string_constructor, substring){
  string s1("abcdefg");
  string s2(s1, 1, 3);
  EXPECT_TRUE(s2=="bcd");
}

TEST(test_string_constructor, const_char_array){
  string s1="abc";
  EXPECT_TRUE(s1=="abc");
} 

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
