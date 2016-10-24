animals = %w( ant bee cat dog elk )
animals.each {|animal| puts animal }

5.times { print "Ho! " }

def wrap &b
  print "Santa says: "
  3.times(&b)
  print "\n"
end
wrap { print "Hi! " }

#begin
#  content = load_blog_data(file_name)
#rescue BlogDataNotFound
#  STDERR.puts "File #{file_name} not found"
#rescue BlogDataFormatError
#  STDERR.puts "Invalid blog data in #{file_name}"
#rescue Exception => exc
#  STDERR.puts "General error loading #{file_name}: #{exc.message}"
#end

class Order < ApplicationRecord
  has_many :line_items
  def self.find_all_unpaid
    self.where('paid = 0')
  end
  def total 
    sum = 0
    line_items.each {|li| sum += li.total}
    sum
  end
end


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