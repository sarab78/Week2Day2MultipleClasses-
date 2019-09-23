require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative("../fish_spec.rb")

class FishRiverTest < MiniTest::Test

def setup()

  @fish1 = Fish.new("Star fish")
  @fish2 = Fish.new("jelly fish")
  @fish3 = Fish.new("whale fish")
@river = River
  @fish = [@fish1, @fish2, @fish3]

  @river_fish = @RiverShop.new("Amazon", @fish )

end

def test_inital_state()
  assert_equal(0, @bear.food)
end

def test_can_get_fish
  fish = @river.get_fish
  assert_equal(@fish3.name, fish.name)
  assert_equal(2, @river.number_of_fishes)
end
end
