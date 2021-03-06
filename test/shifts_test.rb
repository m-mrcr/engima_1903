require_relative 'test_helper'

class ShiftsTest < MiniTest::Test

  def setup
    @shifts_1 = Shifts.new("02715", "040895")
    @shifts_2 = Shifts.new
  end

  def test_it_exists
    assert_instance_of Shifts, @shifts_1
    assert_instance_of Shifts, @shifts_2
  end

  def test_it_initiates_with_given_attributes
    assert_equal "02715", @shifts_1.key.initial_key
    assert_equal "040895", @shifts_1.offset.initial_offset
    assert_equal 27, @shifts_1.characters.count
  end

  def test_it_can_initiate_without_given_attributes
    assert_instance_of Key, @shifts_2.key
    assert_instance_of Offset, @shifts_2.offset
  end

  def test_it_can_generate_relevant_shifts
    assert_equal [3, 27, 73, 20], @shifts_1.relevant_shifts
  end

  def test_it_can_rotate_key
    assert_equal 3, @shifts_1.current_rotation
    assert_equal 27, @shifts_1.current_rotation
    assert_equal 73, @shifts_1.current_rotation
    assert_equal 20, @shifts_1.current_rotation
    assert_equal 3, @shifts_1.current_rotation
  end

  def test_it_can_encode_a_message
    assert_equal "keder ohulw", @shifts_1.encode("hello world")
  end

  def test_it_can_decode_message
    assert_equal "hello world", @shifts_1.decode("keder ohulw")
  end

end
