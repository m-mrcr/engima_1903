require_relative 'test_helper'

class KeyTest < MiniTest::Test

  def setup
    @key_1 = Key.new("02715")
    @key_2 = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key_1
  end

  def test_it_initiates_with_given_variables
    assert_equal "02715", @key_1.initial
  end

  def test_it_initiates_without_given_variables
    assert_instance_of String, @key_2.initial
    assert_instance_of Integer, @key_2.initial.to_i
    assert_equal 5, @key_2.initial.chars.count
  end

  def test_it_can_split_into_useful_hash
    expected = {
                a: 02,
                b: 27,
                c: 71,
                d: 15
               }

    assert_equal expected, @key_1.split
  end

end
