require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
require_relative('../rooms')
require_relative('../songs')

class TestRooms < Minitest::Test

  def setup

    # @guest1 = Guest.new()
    @room1 = Rooms.new("Love Birds", 2)
    @room2 = Rooms.new("Elvis", 10)

  end

  def test_has_name
      assert_equal("Love Birds", @room1.name)
    end

    def test_people
      assert_equal([], @room1.guests)
    end
    def test_has_playlist
      assert_equal([], @room1.playlist)
    end




end
