require './lib/car'

class Owner

  attr_reader :name, :occupation, :cars
  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []
  end

  def buy(description)
    @cars << Car.new({description: 'Green Ford Mustang', year: '1967'})
    # require "pry"; binding.pry
  end
end
