def yield_number
	yield 4
end

array = [1, 2, 3]

yield_number { |number| array << number }
p array

sum = 0
[1, 2, 3].each { |number| sum += number }
puts sum

#contents = []
#File.open("sample.txt") do |file|
#	contents = file.readlines
#end

#puts contents

my_string = "I like apples, bananas, and oranges"
puts my_string.include?("bananas")
puts my_string.include?("elephants")