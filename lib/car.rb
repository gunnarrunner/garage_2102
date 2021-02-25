class Car

  attr_reader :description, :year
  def initialize(attributes)
    @description = attributes[:description]
    @year = attributes[:year]
  end

  def make
    @description.replace 'Ford'
  end

  def model
    @description.replace 'Mustang'
  end

  def age
    how_old = 2021 - @year.to_i
    how_old
  end
end
