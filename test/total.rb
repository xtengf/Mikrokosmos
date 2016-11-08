prices = [3, 4, 5]

def total(prices)
	amount = 0
	index = 0
	while index < prices.length
		amount += prices[index]
		index += 1
	end
	amount
end

puts format("total: " "%.2f", total(prices))


def refund(prices)
	amount = 0
	index = 0
	while index < prices.length
		amount -= prices[index]
		index += 1
	end
	amount
end

puts format("refund: " "%.2f", refund(prices))


def show_discounts(prices)
	#amount = 0
	index = 0
	while index < prices.length
		#amount -= prices[index]
		amount_off = prices[index] / 3.0
		puts format("You discounts: " "%.2f", amount_off)
		index += 1
	end
end

show_discounts(prices)

