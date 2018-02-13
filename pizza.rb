def crust()
	crust = ["Thick Crust", "Thin Crust", "Pan Crust", "Stuffed Crust"].sample
end

def meats()
	meats = ["Pepperoni", "Sausage", "Ham", "Chicken"].sample
end

def veggies()
	veggies = ["Peppers", "Onions", "Mushrooms", "Peas"].sample
end

def special_sauce()
	special_sauce = ["Tomato Sauce", "Ranch Sauce", "Itallian Sauce", "Fruit Sauce"].sample
end

def special_tops()
	special_sauce = ["Extra Cheese", "Extra Sauce", "Pineapple"].sample
end

puts "How many pizzas would you like"
	num_p = gets.chomp
	num_p = num_p.to_i

for x in 1..num_p
	puts "Pizza #{x}"
	print "#{crust}, #{meats}, #{veggies}, #{special_sauce}, #{special_tops}\n"
	puts "\n"
end

puts "Pizzas are $10 each so you owe $#{num_p * 10}.00"

