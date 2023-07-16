require "minitest/autorun"
require "minitest/reporters"


class SampleTest < Minitest::Test
  def test_example
    x = 5
    assert_equal(5, x) #will pass
    refute_equal(5, x) #will fail

    # assert_equal(4, x) #will fail
    refute_equal(4, x) #will pass
  end
end