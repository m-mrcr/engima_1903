require_relative 'test_helper'

class OffsetTest < MiniTest::Test

  def setup
    @offset_1 = Offset.new("040895")
    @offset_2 = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset_1
  end

  def test_it_initiates_with_attributes
    assert_equal "040895", @offset_1.initial
  end

end
