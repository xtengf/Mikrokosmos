def print_block_result
	block_result = yield
	puts block_result
end

print_block_result { 1 + 1 }

print_block_result do
	"I'm not the last expression, so I'm not the return value."
	"I'm the result!"
end

print_block_result { "I hated Truncated".include?("Truncated") }

def triple_block_result
	puts 3 * yield
end

triple_block_result { 2 }
triple_block_result { 5 }


def greet
	puts "Hello, #{yield}!"
end

greet { "Liz" }

def alert_if_true
	if yield
		puts "Block returned true!"
	else
		puts "Block returned false."
	end
end

alert_if_true { 2 + 2 == 5 }
alert_if_true { 2 > 1 }

def one_two
	result = yield(1, 2)
	puts result
end

one_two do |param1, param2|
	param1 + param2
end

def make_casserole
	puts "Preheat oven to 375 degrees"
	ingredients = yield
	puts "Place #{ingredients} in dish"
	puts "Bake for 20 minutes"
end

make_casserole do 
	"noodles, celery, and tuna"
end

make_casserole do 
	"rice, broccoli, and chicken"
end


def find_all
	matching_items = []
	self.each do |item|
		if yield(item)
			matching_items << item
		end
	end
	matching_items
end
