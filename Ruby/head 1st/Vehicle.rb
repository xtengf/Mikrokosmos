class Vehicle

  attr_accessor :odometer
  attr_accessor :gas_used

  def mileage
    @odometer / @gas_used
  end

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

end

class Car < Vehicle
end

class Truck < Vehicle

  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cargo = contents
  end
  
end

class Motorcycle < Vehicle

  def steer
    puts "Turn front wheel."
  end

end

truck = Truck.new
truck.accelerate
truck.steer

car = Car.new
car.odometer = 12000
car.gas_used = 300

puts "Lifetime MPG:"
puts car.mileage

truck.load_bed("259 bouncy balls")
puts "The truck is carrying #{truck.cargo}."

motorcycle = Motorcycle.new
puts motorcycle.steer
puts car.steer
