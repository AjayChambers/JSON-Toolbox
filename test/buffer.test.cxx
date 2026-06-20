// ============================================================================
// Unit tests for JBox::Buffer using Catch2 v3.15.0
// ============================================================================

#include <catch2/catch_test_macros.hpp>
#include <catch2/catch_approx.hpp>

#include "buffer.hxx"

TEST_CASE("Buffer: construction from const char*", "[buffer]") {
    const char* raw = "hello";
    JBox::Buffer buf(raw);

    REQUIRE(buf.size() == 5);
    REQUIRE(buf.data() != nullptr);
    REQUIRE(buf[0] == 'h');
    REQUIRE(buf[4] == 'o');
}

TEST_CASE("Buffer: construction from std::string", "[buffer]") {
    std::string s = "json";
    JBox::Buffer buf(s);

    REQUIRE(buf.size() == 4);
    REQUIRE(buf.data() != nullptr);
    REQUIRE(buf[1] == 's');
}

TEST_CASE("Buffer: construction from std::vector<char>", "[buffer]") {
    std::vector<char> v = {'a', 'b', 'c'};
    JBox::Buffer buf(v);

    REQUIRE(buf.size() == 3);
    REQUIRE(buf[2] == 'c');
}

TEST_CASE("Buffer: operator[] is noexcept and returns correct values", "[buffer]") {
    JBox::Buffer buf("xyz");

    REQUIRE_NOTHROW(buf[0]);
    REQUIRE(buf[0] == 'x');
    REQUIRE(buf[1] == 'y');
    REQUIRE(buf[2] == 'z');
}

TEST_CASE("Buffer: at() throws on out-of-range", "[buffer]") {
    JBox::Buffer buf("abc");

    REQUIRE(buf.at(0) == 'a');
    REQUIRE(buf.at(2) == 'c');

    REQUIRE_THROWS_AS(buf.at(3), std::out_of_range);
    REQUIRE_THROWS_AS(buf.at(100), std::out_of_range);
}

TEST_CASE("Buffer: iterators traverse the buffer correctly", "[buffer]") {
    JBox::Buffer buf("test");

    std::string collected;
    for (auto it = buf.begin(); it != buf.end(); ++it) {
        collected.push_back(*it);
    }

    REQUIRE(collected == "test");
}

TEST_CASE("Buffer: iter_at() returns correct iterator and throws on invalid index", "[buffer]") {
    JBox::Buffer buf("json");

    auto it = buf.iter_at(2);
    REQUIRE(*it == 's');

    REQUIRE_THROWS_AS(buf.iter_at(4), std::out_of_range);
    REQUIRE_THROWS_AS(buf.iter_at(100), std::out_of_range);
}

TEST_CASE("Buffer: begin() and end() produce correct distance", "[buffer]") {
    JBox::Buffer buf("hello");

    auto b = buf.begin();
    auto e = buf.end();

    REQUIRE(std::distance(b, e) == 5);
}
