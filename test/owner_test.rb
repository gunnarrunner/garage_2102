require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'

class OwnerTest < Minitest::Test
  def test_it_exists
     owner_1 = Owner.new('Regina George', 'Heiress')
     assert_instance_of Owner, owner_1
  end

  def test_it_has_a_name
    owner_1 = Owner.new('Regina George', 'Heiress')
    assert_equal 'Regina George', owner_1.name
  end

  def test_it_has_an_occupation
    owner_1 = Owner.new('Regina George', 'Heiress')
    assert_equal 'Heiress', owner_1.occupation
  end

  def test_it_can_have_cars
    owner_1 = Owner.new('Regina George', 'Heiress')
    assert_equal [], owner_1.cars
  end

  def test_it_can_buy_cars
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    assert_equal [Car.new({description: 'Green Ford Mustang', year: '1967'})], owner_1.cars
  end
end
