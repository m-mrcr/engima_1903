require_relative 'test_helper'

class KeyTest < MiniTest::Test

  def setup
    @key_1 = Key.new("02715")
    @key_2 = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_it_initiates_with_given_variables
    assert_equal "02715", @key_1
  end

  def test_it_initiates_without_given_variables
    assert_instance_of String, @key_2
    assert_isntance_of Integer, @key_2.to_i
    assert_equal 5, @key_2.chars.count
  end

end
