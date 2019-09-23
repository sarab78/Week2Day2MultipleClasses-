require( "minitest/autorun" )
require('minitest/rg' )
require_relative('../Pet.rb')
require_relative('../customer.rb')
require_relative('../pet_shop.rb')

class CustomerTest <  MiniTest::Test

def setup
  @new_pet = Pet.new("Blue", "cat", "British Shorthair", 500)
  @customer = Customer.new("Jack Jarvis", 1000)
  @pet_1 = Pet.new("Garry", "cat", "British Shorthair", 500)
  @pet_2 = Pet.new("Null Pinter of Exception", "cat", "British Shorthair", 500)
  @pets = [@pet_1, @pet_2]
  @pet_shop = PetShop.new("wizard of Paws", @pets, 1000)
end

def test_customer_has_name
  assert_equal("Jack Jarvis", @customer.name)
end

def test_customer_has_cash
  assert_equal(1000, @customer.cash)
end

def test_customer_pets_starts_empty
  assert_equal(0, @customer.pet_count())
end

def test_can_add_pet_to_customer
  @customer.add_pet(@new_pet)
  assert_equal(1, @customer.pet_count)
end

def test_can_get_total_cost
  @customer.add_pet(@new_pet)
  @customer.add_pet(@new_pet)
  @customer.add_pet(@new_pet)
  assert_equal(1500, @customer.get_total_value_of_pets)
end
def test_customer_can_buy_pet
@customer.buy_pet("Gary", @pet_shop)
assert_equal(1, @customer.pet_count())
assert_equal(1, @pet_shop.stock_count())
assert_equal(1, @pet_shop.pets_sold)
end
end
