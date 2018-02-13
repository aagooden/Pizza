def crust()
	["Thick Crust", "Thin Crust", "Pan Crust", "Stuffed Crust"].sample
end

def meats()
	["Pepperoni", "Sausage", "Ham", "Chicken"].sample
end

def veggies()
	["Peppers", "Onions", "Mushrooms", "Peas"].sample
end

def special_sauce()
	["Tomato Sauce", "Ranch Sauce", "Itallian Sauce", "Fruit Sauce"].sample
end

def special_tops()
	["Extra Cheese", "Extra Sauce", "Pineapple"].sample
end

def size()
	$pizza_size = ["Small", "Medium", "Large", "Extra Large"].sample
end

puts "How many pizzas would you like"
	num_p = gets.chomp
	num_p = num_p.to_i

owe = 0

for x in 1..num_p
	puts "Pizza #{x}"
	print "#{size}, #{crust}, #{meats}, #{veggies}, #{special_sauce}, #{special_tops}\n"
	if $pizza_size == "Small"
		owe = owe + 8
	elsif $pizza_size == "Medium"
		owe = owe + 10
	elsif $pizza_size == "Large"
		owe = owe + 12
	else
		owe = owe + 15
	end
	puts "\n"
end

delivery = num_p * 2

puts "You owe $#{owe + delivery}.00"

