#greeting = nil

def run_block
	yield
end

run_block do
	@greeting = "hello"
end

puts @greeting