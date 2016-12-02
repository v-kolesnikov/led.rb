require 'test_helper'

class LedTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Led::VERSION
  end

  def test_to_led
    expected = <<-END.chomp
     _   _   _ 
 |   _|  _|  _|
 |  |_   _|  _|
END
    assert_equal expected, Led.to_led(1233)
  end
end
