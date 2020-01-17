require('minitest/autorun')
require('minitest/reporters')

require_relative('../songs.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class SongsTest < MiniTest::Test

  
end
