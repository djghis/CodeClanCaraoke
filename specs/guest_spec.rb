require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
require_relative('../rooms')
require_relative('../songs')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("GG", 100, 38, "Rockstar")
    @guest3 = Guest.new("Fraser", 70, 24, "Barbie Girl")
  end


  def test_has_name
      assert_equal("GG", @guest.name)
    end

    def test_has_wallet
      assert_equal(100, @guest.wallet)
    end

    def test_age
      assert_equal(38, @guest.age)
    end

    def test_has_favorite_song
      assert_equal("Rockstar", @guest.favorite_song)
    end

    def test_found_favorite_song
      result = @guest3.found_favorite_song
      assert_equal("OMG I love This song!", result)
    end


end
