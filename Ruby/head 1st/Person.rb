class Person
  
  def name=(new_value)
    @storage = new_value
  end
  
  def name
    @storage
  end

  def greeting
    puts "Hello!"
  end
  
end


class Employee < Person
  
  def salary=(new_value)
    @storage = new_value
  end

  def salary
    @storage
  end

end

class Friend < Person
  def greeting
    super
    puts "Glad to see you!"
  end
end



employee = Employee.new
employee.name = "John Smith"
puts employee.name
employee.salary = 89999
puts employee.name

Friend.new.greeting

