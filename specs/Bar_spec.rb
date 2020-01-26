require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
require_relative('../rooms')
require_relative('../songs')
require_relative('../bar')
require_relative('../drinks')

class TestBar < Minitest::Test

  def setup
    @bar = Bar.new("CCC")
    @guest1 = Guest.new("GG", 100, 38, "Rockstar")
    @guest2 = Guest.new("Natalie", 50, 33, "Love")
    @guest3 = Guest.new("Fraser", 70, 24, "Barbie Girl")
  end

def test_has_name
  assert_equal("CCC", @bar.name)
end

def test_has_till
  assert_equal(0, @bar.till)
end





end
