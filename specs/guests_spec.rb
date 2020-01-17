require('minitest/autorun')
require('minitest/reporters')

require_relative('../guests.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class GuestsTest < MiniTest::Test
end
