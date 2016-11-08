

def total(prices)
	amount = 0
	prices.each do |price|
		amount += price
	end
	amount
end

prices = [8, 7, 1]
puts format("%.2f", total(prices))
