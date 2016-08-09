class Dog
  
  #attr_accessor :name, :age
  
  def name=(new_value)
    @name = new_value
  end
  
  def name
    @name
  end
  
  def age=(new_value)
    @age = new_value
  end
  
  def age
    @age
  end
  
  def report_age
    puts "#{@name} is #{age} years old."
  end

  
  def make_up_name
    @name = "Sandy"
  end
  
  def talk
    puts "#{@name} says Bark!"
  end
  
  def move(destination)
    puts "#{@name}Running to the #{destination}."
  end
  
  def make_up_age
    @age = 5
  end
  
  def report_age
    puts "#{@name} is #{@age} years old."
  end
  
end

fido = Dog.new
rex = Dog.new

fido.talk
rex.move("food bowl")

class Bird
  def talk(name)
    puts "#{name} says Chirp! Chirp!"
  end
  def move(name, destination)
    puts "#{name} flies to the #{destination}."
  end
end

class Cat 
  def talk
    puts "Meow!"
  end
  def move(destination)
    puts "Running to the #{destination}."
  end
end

bird = Bird.new
bird_name = "Jack"
bird.talk(bird_name)
bird.move(bird_name, "fence")

dog = Dog.new
dog.make_up_name
# bird.move("tree")
dog.talk
dog.move("house")
dog.make_up_age
dog.report_age

# bird.talk
cat = Cat.new
cat.move("house")


fido = Dog.new
fido.name = "Fido"
fido.age = 2
fido.report_age

