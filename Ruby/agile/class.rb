class Greeter
  def initialize(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def name=(new_name)
    @name = new_name
  end
end

g = Greeter.new("Barney")
g.name
g.name = "betty"
g.name


class Greeter
	attr_accessor :name
	attr_reader   :greeting
	attr_writer	  :age
end

class MyClass
	def m1
	end
	protected
	def m2
	end
	private
	def m3
	end
end

