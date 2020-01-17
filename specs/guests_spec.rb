require('minitest/autorun')
require('minitest/reporters')

require_relative('../guests.rb')
require_relative('../songs.rb')
require_relative('../rooms.rb')
require_relative('../drinks.rb')


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class GuestsTest < MiniTest::Test

  def setup
    @Jim = Guests.new("Jim", "ABC", 20)

    @room = Rooms.new("Rocky")

    @song1 = Songs.new("ABC")
    @song2 = Songs.new("Baby Shark")
  end

  def test_fee_payment
    @Jim.pay_entry_fee()
    assert_equal(10, @Jim.get_money)
  end

  def test_customer_woohoo
    @room.add_song(@song1)
    value = @Jim.customer_woohoo(@room)
    assert_equal("Woohoo!", value)
  end

  def test_customer_boohoo
    @room.add_song(@song2)
    value = @Jim.customer_woohoo(@room)
    assert_equal("Boohoo!", value)
  end

end
