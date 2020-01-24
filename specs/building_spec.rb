require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
require_relative('../rooms')
require_relative('../songs')
require_relative('../building')

class TestRooms < Minitest::Test

  def setup
    @building = Building.new("CCC")
  end

def test_has_name
  assert_equal("CCC", @building.name)
end

def test_has_till
  assert_equal(0, @building.till)
end

def test_has_entry_fee
  assert_equal(10, @building.entry_fee)
end

end
