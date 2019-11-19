class Car
  attr_accessor :brand, :color, :year

  def initialize(brand, color, year)
    @brand = brand
    @color = color 
    @year  = year
  end

  def turn_on_car
     "On car"
  end  

  def travel_start
     "Start traveling"
  end 
  
  def travel_end
     "Finish traveling"
  end  
end 

car = Car.new("Toyota", "Black", 2008)
car.turn_on_car