require('minitest/autorun')
require('minitest/reporters')

require_relative('../guests.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class GuestsTest < MiniTest::Test
  def setup
    @Jim = Guests.new("Jim", "ABC", 20)
  end

  def test_fee_payment
    @Jim.pay_entry_fee(5)
    assert_equal(15, @Jim.get_money)
  end

end
