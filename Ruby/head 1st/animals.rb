class Bird
  
  def talk(name)
    puts "#{name} says Chirp! Chirp!"
  end
  
  def move(name, destination)
    puts "#{name} flies to the #{destination}."
  end
  
end


class Dog
  
  attr_accessor :name, :age
  
  def report_age
    puts "#{@name} is #{@age} years old."
  
  def talk(name)
    puts "#{name} says Bark!"
  end
  
  def move(name, destination)
      puts "#{name} funs to the #{destination}."
  end
  
end


class Cat
  
  def talk(name)
    puts "#{name} says Meow!"
  end
  
  def move(name. destination)
    puts "#{name} runs to the #{destination}."
  end
  
end
  
fido = Dog.new
rex = Dog.new

fido.talk
rex.move("food bowl")

bird = Bird.new
dog = Dog.new
cat = Cat.new

bird.move("tree")
dog.talk
bird.talk
cat.move("house")


dog = Dog.new
dog_name = "Lucy"
dog.talk(dog_name)
dog.move(dog_name, "fence")