require_relative 'test_helper'

class ShiftsTest < MiniTest::Test

  def setup
    @shift_1 = Shifts.new("02715", "040895")
    @shift_2 = Shifts.new
  end

  def test_it_exists
    assert_instance_of Shifts, @shift_1
    assert_instance_of Shifts, @shift_2
  end

  def test_it_initiatse_with_given_attributes
    assert_equal "02715", @shift_1.key
    assert_equal "040895", @shift_1.offset
    assert_equal 27, @shift_1.characters.count
  end

  def test_it_can_initiate_without_given_attributes
    assert_instance_of Key, @shifts_2.key
    assert_instance_of Offset, @shifts_2.offset
  end

end
