# coding: utf-8

require 'test_helper'

class Thinreports::Core::Shape::Basic::TestBlockFormat < Minitest::Test
  include Thinreports::TestHelper
  
  TEST_BLOCK_FORMAT = {
    "value" => "default value",
    "box"   => {
      "x" => 100.0,
      "y" => 100.0,
      "width" => 100.0,
      "height" => 100.0
    }
  }
  
  def test_value_reader_via_TEST_BLOCK_FORMAT
    assert_equal format.value, 'default value'
  end
  
  def test_box_reader_via_TEST_BLOCK_FORMAT
    assert_equal format.box.values_at('x', 'y', 'width', 'height'),
                 [100.0, 100.0, 100.0, 100.0]
  end
  
  def format
    Thinreports::Core::Shape::Basic::BlockFormat.new(TEST_BLOCK_FORMAT)
  end
end