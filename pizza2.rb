




def crust()
	["Thick Crust", "Thin Crust", "Pan Crust", "Stuffed Crust"]
end

def meats()
	["Pepperoni", "Sausage", "Ham", "Chicken"]
end

def veggies()
	["Peppers", "Onions", "Mushrooms", "Peas"]
end

def special_sauce()
	["Tomato Sauce", "Ranch Sauce", "Itallian Sauce", "Fruit Sauce"]
end

def special_tops()
	["Extra Cheese", "Extra Sauce", "Pineapple"]
end

def size()
	["Small", "Medium", "Large", "Extra Large"]
end

def owe_calc(pizza_size)
	owe_count = 0

	pizza_size.each do |x|
		if x == "Small"
			p = 8
		elsif x == "Medium"
			p = 10
		elsif x == "Large"
			p =12
		else
			p = 15
		end
		owe_count = owe_count + p
	end
	return owe_count
end

puts "How many pizzas would you like"
	num_p = gets.chomp
	num_p = num_p.to_i

# for x in 1..num_p
# 	p_size = size.sample

# 	puts "Pizza #{x}"
# 	puts "#{p_size}, #{crust.sample}, #{meats.sample}, #{veggies.sample}, #{special_sauce.sample}, #{special_tops.sample}\n"
# 	puts "  "

# 	owe = owe + owe_calc(p_size)
	
# end


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

def show_pizzas(num_p, pizza_size, crust_type, meat_selection, veggies_selection, sauce_selection)
	for c in 1..num_p
		puts "Pizza #{c}" 
		puts pizza_size[c-1]
		puts crust_type[c-1]
		puts meat_selection[c-1]
		puts veggies_selection[c-1]
		puts sauce_selection[c-1]
		puts " "
	end
end

show_pizzas(num_p, pizza_size, crust_type, meat_selection, veggies_selection, sauce_selection)


owe = owe_calc(pizza_size)
owe = owe.to_f
delivery = num_p * 2
delivery = delivery.to_f
tax = (owe + delivery) * 0.06
tax = tax.to_f


puts "Pizza Charge = $#{sprintf("%.02f", owe)}"
puts "Delivery = $#{sprintf("%.02f", delivery)}"
puts "Tax = $#{sprintf("%.02f", tax)}"
puts " "
puts "Your Total is $#{(sprintf("%.02f",(owe + delivery + tax)))}"