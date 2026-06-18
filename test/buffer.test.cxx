#include "buffer.hxx"
#include "iterator.hxx"
#include <gtest/gtest.h>

using JBox::Buffer;
using JBox::BufferIterator;

// -------------------------------------------------------------
//  Constructors
// -------------------------------------------------------------
TEST(BufferTest, ConstructFromCString)
{
    const char *raw = "hello";
    Buffer b(raw);

    EXPECT_EQ(b.size(), 5u);
    ASSERT_NE(b.data(), nullptr);
    EXPECT_EQ(std::string(b.data(), b.size()), "hello");
}

TEST(BufferTest, ConstructFromString)
{
    std::string s = "world";
    Buffer b(s);

    EXPECT_EQ(b.size(), 5u);
    EXPECT_EQ(std::string(b.data(), b.size()), "world");
}

TEST(BufferTest, ConstructFromVector)
{
    std::vector<char> v = {'a',
      'b',
      'c',
      'd'};
    Buffer b(v);

    EXPECT_EQ(b.size(), 4u);
    EXPECT_EQ(std::string(b.data(), b.size()), "abcd");
}

// -------------------------------------------------------------
//  Element Access
// -------------------------------------------------------------
TEST(BufferTest, OperatorIndex)
{
    Buffer b("json");

    EXPECT_EQ(b[0], 'j');
    EXPECT_EQ(b[1], 's');
    EXPECT_EQ(b[2], 'o');
    EXPECT_EQ(b[3], 'n');
}

TEST(BufferTest, AtValid)
{
    Buffer b("json");

    EXPECT_EQ(b.at(0), 'j');
    EXPECT_EQ(b.at(3), 'n');
}

TEST(BufferTest, AtThrowsOnOutOfRange)
{
    Buffer b("json");

    EXPECT_THROW(b.at(4), std::out_of_range);
    EXPECT_THROW(b.at(100), std::out_of_range);
}

// -------------------------------------------------------------
//  Iterators
// -------------------------------------------------------------
TEST(BufferTest, BeginEndIteration)
{
    Buffer b("xyz");

    auto it = b.begin();
    auto ed = b.end();

    ASSERT_EQ(std::distance(it, ed), 3);
    EXPECT_EQ(*it, 'x');
    EXPECT_EQ(*(it + 1), 'y');
    EXPECT_EQ(*(it + 2), 'z');
}

TEST(BufferTest, IterAtValid)
{
    Buffer b("xyz");

    EXPECT_EQ(*(b.iter_at(0)), 'x');
    EXPECT_EQ(*(b.iter_at(1)), 'y');
    EXPECT_EQ(*(b.iter_at(2)), 'z');
}

TEST(BufferTest, IterAtThrows)
{
    Buffer b("xyz");

    EXPECT_THROW(b.iter_at(3), std::out_of_range);
    EXPECT_THROW(b.iter_at(10), std::out_of_range);
}

// -------------------------------------------------------------
//  Data + Size
// -------------------------------------------------------------
TEST(BufferTest, DataAndSize)
{
    Buffer b("12345");

    EXPECT_EQ(b.size(), 5u);
    EXPECT_EQ(std::string(b.data(), b.size()), "12345");
}
