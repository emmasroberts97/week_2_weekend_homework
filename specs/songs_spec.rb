require('minitest/autorun')
require('minitest/reporters')

require_relative('../songs.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class SongsTest < MiniTest::Test

  def setup
    @song = Songs.new("Mamma Mia")
  end

  def test_get_name
    assert_equal("Mamma Mia", @song.name)
  end

end
