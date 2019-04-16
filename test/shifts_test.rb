require_relative 'test_helper'

class ShiftsTest < MiniTest::Test

  def setup
    @shift = Shifts.new("02715", "040895")
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

end
