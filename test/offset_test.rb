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

  def test_it_initiates_without_attributes
    assert_instance_of String, @offset_2.initial
    assert_instance_of Integer, @offset_2.initial.to_i
    assert_equal Time.now.strftime("%d%m%y"), @offset_2.initial
  end

  def test_it_can_organize_into_hash
    expected = {
                a: 1,
                b: 0,
                c: 2,
                d: 5
               }

    assert_equal expected, @offset_1.split
  end

end
