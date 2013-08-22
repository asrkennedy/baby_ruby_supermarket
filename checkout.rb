require 'pry'

# class Checkout

# end

# co = Checkout.new(pricing_rules)
# co.scan(item)
# co.scan(item)
# Price = co.total

puts "WELCOME TO GA SUPERMARKET! \nWe sell (s)trawberries (3.11), (f)ruit_tea (5.00), and (c)offee (11.23). \n DEALS: \nFruit Tea -- Buy one Get one Free! \nStrawberries -- Buy 3 or more and get each for only 4.50.\n"

items = ["s", "f", "c"]
customer_items = []
strawberries = []
fruit_tea = []
coffee = []

while true
  puts "Would you like to buy (s)trawberries, (f)ruit tea, (c)offee, or (ch)eckout?"
  item = gets.chomp
  if item == "ch"
    break
  elsif items.include? item
    customer_items << item
    puts "#{item} has been added."
  else
    puts "Please enter one of the options provided."
  end
end

if customer_items.any?
    customer_items.each do |item|
    if item == 's'
      strawberries << item
    elsif item == 'f'
      fruit_tea << item
    elsif item == 'c'
      coffee << item
    end
  end

  if strawberries.count >= 3
    strawberries = strawberries.count * 4.50
  else
    strawberries = strawberries.count * 5
  end

  if fruit_tea.count.even?
    fruit_tea = fruit_tea.count * 1.555
  else
    fruit_tea = ((fruit_tea.count -1)* 1.55) + 3.11
  end

  coffee = coffee.count * 11.23

  price = fruit_tea + strawberries + coffee

end

if price
  puts "Your total cost of purchase is #{price}. Thank you for shopping at GA Supermarket!"
else
  puts "Thank you for shopping at GA Supermarket!"
end
