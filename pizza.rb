def crust()
	crust = ["Thick", "Thin", "Pan", "Stuffed"].sample
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

puts "How many pizzas would you like"
	num_p = gets.chomp
	num_p = num_p.to_i

for x in 1..num_p
	puts "Pizza #{x}"
	print "#{crust}, #{meats}, #{veggies}, #{special_sauce}\n"
	puts "\n"
end

