
def database
	database = 
	{
		order_items: [["Pizza", 0], ["Sub", 0], ["Side", 0], ["Drink", 0], ["Dessert", 0]],
		piz_crusts: [["Thick", 0], ["Thin", 0], ["Regular", 0], ["Stuffed", 2]],
		piz_meat: [["Pepperoni", 0], ["Sausage", 0], ["Ham", 0], ["Chicken", 0]],
		piz_veggies: [["Peppers", 0], ["Onions", 0], ["Mushrooms", 0], ["Olives", 0]],
		piz_sauces: [["Tomato", 0], ["Alfredo", 0], ["No Sauce", 0], ["Spicy", 0]],
		piz_special_tops: [["Anchovies", 0], ["Pineapple", 0], ["Bacon", 0]],
		piz_sizes: [["Small", 10], ["Medium", 12], ["Large", 15], ["Extra Large", 18]],
		sub_breads: [["White", 0], ["Whole Wheat", 0], ["Itallian", 0], ["Herb", 0]],
		sub_sizes: [["6 Inch", 6], ["Foot Long", 10], ["Good Grief", 15]],
		drink_sizes: [["Small", 2.5], ["Medium", 3], ["Large", 4], ["Extra Large", 6]],
		drink_types: [["Coke", 0], ["Diet Coke", 0], ["Sprite", 0], ["Dr. Pepper", 0]],
		side_types: [["Fries", 0], ["Onion Rings", 0], ["Potato Chips", 0]],
		desserts: [["Chocolate Cake", 2], ["Pudding", 1.5], ["Chocolate Chip Cookie", 1]]
	}
end


def show_order(order)
	for x in (1..order.length)
			print "#{order[x][1]} - $"
			print "#{order[x][2]}"
			print "\n"
		end
end


def add_item(order)
	puts ""
	if order.empty?
	else
		puts "Your order so far is"
		show_order(order)
	end
	continue = "nil"
	until continue == "yes" || continue == "no"
		puts "Would you like to and an item to your order? (yes or no)"
		continue = gets.chomp 
	end
	return continue
end


def main()
	system "clear"
	system "cls"

	puts "What would you like to order?"
	puts "Just type the number of your selection"
	puts " "
	for x in (0...database[:order_items].length)
		puts "#{x+1} - #{database[:order_items][x][0]}"
	end
	puts ""

	answer = 0

	until answer.between?(1, 5)
		puts "Enter the number that is next to your selection"
		answer = gets.chomp
		answer = answer.to_i 
		
	end	
	return answer
end


def dessert_order(order, database, item_count)

	system "clear"
	system "cls"
	dessert_selection = 0
	puts ""
	puts "Select your dessert from the following:"


	for x in (0...database[:desserts].length)
	puts "#{x+1} - #{database[:desserts][x][0]}: $#{database[:desserts][x][1]}"
	end

	until dessert_selection.between?(1, database[:desserts].length)
		puts "Enter the number that is next to your selection"
		dessert_selection = gets.chomp
		dessert_selection = dessert_selection.to_i 
	end	
	item_count += 1
	order[item_count] = database[:desserts][dessert_selection - 1]
	order[item_count].unshift('Dessert')
	
	

	return [order, item_count]
end


def calculate_owe(order, owe)

	for x in (1...(order.length + 1))
		owe = owe + order[x][2]
	end
	return owe 
end



order = Hash.new
item_count = 0
owe = 0
#owe = owe.to_f
system "clear"
system "cls"
puts "Welcome to Gooden's Pizza Shack"

continue = add_item(order)

while continue == "yes"

	category = main()
	if category == 5
		order, item_count = dessert_order(order, database, item_count)
	end
	continue = add_item(order)
end

# for x in (0...[order].length)
# 	puts "#{x+1} - #{:order[x]}"
# 	end
owe = calculate_owe(order, owe)
puts "Your final order is"
puts ""
show_order(order)
puts ""
puts "You owe #{owe}"
puts "Have a nice day!"

puts order 





pizza_size = []
crust_type = []
meat_selection = []
veggies_selection = []
sauce_selection = []
topping_selction = []




def pizza_ordering()

	size_sel = 0
	until size.include? size_sel do 
		puts "Pick the size for Pizza #{p} from the following sizes"
		puts size
		size_sel = gets.chomp
		puts " "
	end	
		pizza_size.push (size_sel)
		puts " "

#Select the crust for each pizza
	crust_sel = 0
	until crust.include? crust_sel do 
		puts "Pick the crust for Pizza #{p} from the following types"
		puts crust
		crust_sel = gets.chomp
		puts " "
	end	
		crust_type.push (crust_sel)
		puts " "

#Select the meat for each pizza
	meats_sel = 0
	until meats.include? meats_sel do 
		puts "Pick the meat for Pizza #{p} from the following types"
		puts meats
		meats_sel = gets.chomp
		puts " "
	end	
		meat_selection.push (meats_sel)
		puts " "

#Select the veggies for each pizza
	veggie_sel = 0
	until veggies.include? veggie_sel do 
		puts "Pick the veggie for Pizza #{p} from the following types"
		puts veggies
		veggie_sel = gets.chomp
		puts " "
	end	
		veggies_selection.push (veggie_sel)
		puts " "

#Select the sauce for each pizza
	sauce_sel = 0
	until special_sauce.include? sauce_sel do 
		puts "Pick the sauce for Pizza #{p} from the following types"
		puts special_sauce
		sauce_sel = gets.chomp
		puts " "
	end	
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

#show_pizzas(num_p, pizza_size, crust_type, meat_selection, veggies_selection, sauce_selection)


# owe = owe_calc(pizza_size)
# owe = owe.to_f
# delivery = num_p * 2
# delivery = delivery.to_f
# tax = (owe + delivery) * 0.06
# tax = tax.to_f


# puts "Pizza Charge = $#{sprintf("%.02f", owe)}"
# puts "Delivery = $#{sprintf("%.02f", delivery)}"
# puts "Tax = $#{sprintf("%.02f", tax)}"
# puts " "
# puts "Your Total is $#{(sprintf("%.02f",(owe + delivery + tax)))}"