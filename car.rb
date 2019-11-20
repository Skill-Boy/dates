class Car
  attr_accessor :brand, :color, :year, :on_car, :init_travel
  
  def initialize(brand, color, year)
    @brand = brand
    @color = color 
    @year  = year
    self.on_car = false
    self.init_travel = false
  end
  
  def turn_on_car
    self.on_car = true
    "On car"
  end
  
  def travel_start
    begin
      self.init_travel = true 
    raise "Init first on car" if !on_car
      "Starting travel"
    end
  end 
  
  def travel_end
    begin
    raise "Init first travel start" if !init_travel
      "Finish travel" 
    end
  end
end 
  
car = Car.new("Toyota", "Black", 2008)
car.turn_on_car
car.travel_start
car.travel_end