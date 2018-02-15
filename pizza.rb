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

def owe_calc(s)
	if s == "Small"
		8
	elsif s == "Medium"
		10
	elsif s == "Large"
		12
	else
		15
	end
end

owe = 0.0
puts "How many pizzas would you like"
	num_p = gets.chomp
	num_p = num_p.to_i

for x in 1..num_p
	p_size = size.sample

	puts "Pizza #{x}"
	puts "#{p_size}, #{crust.sample}, #{meats.sample}, #{veggies.sample}, #{special_sauce.sample}, #{special_tops.sample}\n"
	puts "  "

	owe = owe + owe_calc(p_size)
	
end

delivery = num_p * 2
delivery = delivery.to_f
tax = owe * 0.06
tax = tax.to_f
owe = owe.to_f

puts 
puts "Pizza Charge = $#{sprintf("%.02f", owe)}"
puts "Delivery = $#{sprintf("%.02f", delivery)}"
puts "Tax = $#{sprintf("%.02f", tax)}"
puts " "
puts "Your Total is $#{(sprintf("%.02f",(owe + delivery + tax)))}"

