require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
require_relative('../rooms')
require_relative('../songs')

class TestSongs< Minitest::Test

  def setup
    @song = Songs.new("Rockstar", 2.23, "Rock")
  end


  def test_has_title
      assert_equal("Rockstar", @song.title)
    end

    def test_has_length
      assert_equal(2.23, @song.length)
    end

    def test_has_style
      assert_equal("Rock", @song.style)
    end

end
