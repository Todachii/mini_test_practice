require 'minitest_helper'

class TestMiniTestPractice < MiniTest::Unit::TestCase
  def setup
    @my_class = MiniTestPractice::MyClass.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def test_odd?
    assert_equal true, @my_class.odd?(3)
    assert_equal true, @my_class.odd?(1)
    assert_equal false, @my_class.odd?(2)
    assert_equal false, @my_class.odd?(4)
    assert_equal false, @my_class.odd?(0)
  end

  def test_check_number?
    assert_equal true, @my_class.check_number?(1000)
    assert_equal false, @my_class.check_number?(9999)
    assert_equal false, @my_class.check_number?(999)
    assert_equal false, @my_class.check_number?(0000)
    assert_equal false, @my_class.check_number?(10000)
  end
 
  def test_enough_length?
    assert_equal false, @my_class.enough_length?('a')
    assert_equal false, @my_class.enough_length?('ab')
    assert_equal true, @my_class.enough_length?('abc')
    assert_equal true, @my_class.enough_length?('abcd')
    assert_equal true, @my_class.enough_length?('abcdefg')
    assert_equal true, @my_class.enough_length?('abcdefgh')
    assert_equal false, @my_class.enough_length?('abcdefghi')
  end

  def test_divide
    assert_equal 2, @my_class.divide(4,2)
    assert_equal 2, @my_class.divide(2,1)
    assert_equal 3, @my_class.divide(9,3)
    assert_throws :exit do
      @my_class.divide(4,0)
    end
  end

  def test_fizz_buzz
    assert_equal 'Fizz', @my_class.fizz_buzz(6)
    assert_equal 'Buzz', @my_class.fizz_buzz(10)
    assert_equal 'FizzBuzz', @my_class.fizz_buzz(30)
    assert_equal 'FizzBuzz', @my_class.fizz_buzz(0)
  end
  
  def test_hello
    out, err = capture_io do
      @my_class.hello
    end
    assert_equal 'Hello', out
  end
end
