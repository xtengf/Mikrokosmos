def twice(&my_block)
  my_block.call
  my_block.call
end

def twice 
  yield
  yield
end

def give(&my_block)
  my_block.call("2 turtle doves", "1 partridge")
end

def give
  yield "2 turtle doves", "1 partridge"
end


def run_block
  yield
end

run_block do
  puts "do/end"
end

run_block { puts "braces" }



def take_this
  yield "present"
end

take_this do |thing|
  puts "do/end block got #{thing}"
end

take_this { |thing| puts "braces block got #{thing}" }



