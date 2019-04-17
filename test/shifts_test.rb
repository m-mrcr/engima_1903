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

  def test_it_can_create_final_shifts_hash
    expected = {
                a: 3,
                b: 27,
                c: 73,
                d: 20
               }
    assert_equal expected, @shifts_1.final_shifts
  end

end
