require('minitest/autorun')
require('minitest/reporters')
require('pry-byebug')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
require_relative('../rooms')
require_relative('../songs')
require_relative('../bar')
require_relative('../drinks')

class TestRooms < Minitest::Test

  def setup

    @guest1 = Guest.new("GG", 100, 38, "Rockstar")
    @guest2 = Guest.new("Natalie", 50, 33, "Love")
    @guest3 = Guest.new("Fraser", 70, 24, "Barbie Girl")
    @song1 = Songs.new("Rockstar", "2:23", "Rock")
    @song2 = Songs.new("Love", "2:56", "Balad")
    @song3 = Songs.new("Barbie Girl", "2.35", "Pop")
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

    def test_can_check_in
      @room1.add_someone(@guest1)
      @room1.add_someone(@guest2)
      assert_equal(2, @room1.guests.count)
    end

    def test_check_out
      @room1.add_someone(@guest1)
      @room1.add_someone(@guest2)
      @room1.check_out(@guest1)

      assert_equal(1, @room1.guests.count)
    end

    def test_add_songs
      @room1.add_songs(@song2)
      result = @room1.playlist
      assert_equal(1, result.count)
    end

    def test_get_song_by_name
      @room1.add_songs(@song1)
      @room1.add_songs(@song2)
      result = @room1.get_song_by_name("Love")
      assert_equal(@song2, result)
    end

    def test_space_limit
      @room1.add_someone(@guest1)
      @room1.add_someone(@guest2)

      @room1.add_someone(@guest3)

      assert_equal(2, @room1.guests.count)
    end

    def test_guest_has_been_charged
      @room1.add_someone(@guest1)
      @room1.add_someone(@guest2)
      assert_equal(20, @room1.till)
      assert_equal(90, @guest1.wallet)
      assert_equal(40, @guest2.wallet)
    end

    # def test_found_favorite_song__in_playlist
    # @room1.add_songs(@song1)
    # @room1.add_songs(@song2)
    # @room1.add_songs(@song3)
    # # binding.pry
    # @room1.add_someone(@guest2)
    # @room1.add_someone(@guest3)
    # @room1.happy_to_find_favorite_song(@guest3, @song3)
    #   result = @guest3.found_favorite_song
    #   assert_equal("OMG I love This song!", result)
    # end
#

def test_playlist_length
  assert_equal("7:54", @playlist.playlist_length)
end


end
