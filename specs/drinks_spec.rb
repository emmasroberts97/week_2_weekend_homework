require('minitest/autorun')
require('minitest/reporters')

require_relative('../drinks.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class DrinksTest < MiniTest::Test

  def setup
    @drink = Drinks.new("Surfer on Acid", 4)
  end

  def test_get_drink_name
    assert_equal("Surfer on Acid", @drink.name)
  end

  def test_get_drink_price
    assert_equal(4, @drink.price)
  end 
end
