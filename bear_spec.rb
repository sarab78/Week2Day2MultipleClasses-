require( "minitest/autorun" )
require('minitest/rg' )
require_relative('../fish.rb')
require_relative('../bear.rb')
require_relative('../river.rb')

class TestBear < MiniTest::Test

  def setup

    @bear = Bear.new("yogi", "Grizzly")

   @fish_1 = Fish.new("rosy")
   @fish_2 = Fish.new("grace)
   @fish_3 = Fish.new("mili")

   @river = River.new("Amazon", @fish)
 end
end
