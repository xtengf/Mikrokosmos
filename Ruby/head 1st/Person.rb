class Person
  
  def name=(new_value)
    @storage = new_value
  end
  
  def name
    @storage
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


employee = Employee.new
employee.name = "John Smith"
puts employee.name
employee.salary = 89999
puts employee.name

