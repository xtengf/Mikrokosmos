def total(prices)
  amount = 0
  index = 0
  while index < prices.length
    amount += prices[index]
    # prices.each { |price| amount += price }
    index += 1
  end
  amount
end


def total1(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  amount
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", total1(prices))





def refund(prices)
  amount = 0
  index = 0
  while index < prices.length
    amount -= prices[index]
    index += 1
  end
  amount
end

def refund1(prices)
  amount = 0
  prices.each do |price|
    amount -= price
  end
  amount
end

puts format("%.2f", refund1(prices))

def show_discounts(prices)
  index = 0
  while index < prices.length
    amount_off = prices[index] / 3.0
    puts format("Your discount: $%.2f", amount_off)
    index += 1
  end
end

def show_discounts1(prices)
  prices.each do |price|
    amount_off = price / 3.0
    puts format("your discount: $%.2f", amount_off)
  end
end
show_discounts(prices)
show_discounts1(prices)


