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
    @guest1 = Guest.new("GG", 100, 38, "Rockstar")
    @guest2 = Guest.new("Natalie", 50, 33, "Love")
    @guest3 = Guest.new("Fraser", 70, 24, "Barbie Girl")
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

def test_entry_fee_works
  @building.charge_fee
  assert_equal(10, @building.till)
end

end
