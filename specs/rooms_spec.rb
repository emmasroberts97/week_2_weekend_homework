require('minitest/autorun')
require('minitest/reporters')

require_relative('../guests.rb')
require_relative('../rooms.rb')
require_relative('../songs.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RoomsTest < MiniTest::Test

  def setup
    @room = Rooms.new()

    @Emma = Guests.new("Emma", "Dancing Queen", 100)
    @Scott = Guests.new("Scott", "All Star", 80)


    @song1 = Songs.new("Dancing Queen")
    @song2 = Songs.new("Old Town Road")

  end

  def test_guest_check_in
    @room.check_in_guests(@Emma)
    @room.check_in_guests(@Scott)
    assert_equal(2, @room.check_room_count)
  end
  def test_guest_check_out
    @room.check_out_guests()
    assert_equal(0, @room.check_room_count)
  end

  def test_song_add
    @room.add_song(@song1)
    @room.add_song(@song2)
    assert_equal(2, @room.check_song_count)
  end
  
end
