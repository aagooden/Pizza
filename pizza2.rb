def crust()
	["Thick", "Thin", "Pan", "Stuffed"]
end

def meats()
	["Pepperoni", "Sausage", "Ham", "Chicken"]
end

def veggies()
	["Peppers", "Onions", "Mushrooms", "Peas"]
end

def special_sauce()
	["Tomato", "Ranch", "Itallian", "Fruit"]
end

def special_tops()
	["Extra Cheese", "Extra Sauce", "Pineapple"]
end

def size()
	sizes = ["Small", "Medium", "Large", "Extra Large"]
end

puts "How many pizzas would you like"
	num_p = gets.chomp
	num_p = num_p.to_i

pizza_size = []
crust_type = []
meat_selection = []
veggies_selection = []
sauce_selection = []
topping_selction = []

for p in 1..num_p
	puts "Pick the size for Pizza #{p} from the following sizes"
	puts size
	size_sel = gets.chomp
	pizza_size.push (size_sel)
	puts "\n"

	puts "Pick the crust for Pizza #{p} from the following options"
	puts crust
	crust_sel = gets.chomp
	crust_type.push (crust_sel)
	puts " "

	puts "Pick the meat for Pizza #{p} from the following options"
	puts meats
	meats_sel = gets.chomp
	meat_selection.push (meats_sel)
	puts " "

	puts "Pick the veggie for Pizza #{p} from the following options"
	puts veggies 
	veggie_sel = gets.chomp
	veggies_selection.push (veggie_sel)
	puts " "

	puts "Pick the sauce for Pizza #{p} from the following options"
	puts special_sauce
	sauce_sel = gets.chomp
	sauce_selection.push (sauce_sel)
	puts " "
end

for c in 1..num_p
	puts "Pizza #{c}" 
	puts pizza_size[c-1]
	puts crust_type[c-1]
	puts meat_selection[c-1]
	puts veggies_selection[c-1]
	puts sauce_selection[c-1]
	puts " "
end



# owe = 0
# owe.to_f

# for x in 1..num_p
# 	puts "Pizza #{x}"
# 	print "#{size}, #{crust}, #{meats}, #{veggies}, #{special_sauce}, #{special_tops}\n"
# 	if $pizza_size == "Small"
# 		owe = owe + 8
# 	elsif $pizza_size == "Medium"
# 		owe = owe + 10
# 	elsif $pizza_size == "Large"
# 		owe = owe + 12
# 	else
# 		owe = owe + 15
# 	end
# 	puts "\n"
# end

# delivery = num_p * 2

# puts "You owe $#{(owe + delivery).round(2)}"