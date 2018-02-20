
def database
	database = 
	{
		order_items: [["Pizza", 0], ["Sub", 0], ["Side", 0], ["Drink", 0], ["Dessert", 0]],
		piz_crusts: [["Thick", 0], ["Thin", 0], ["Regular", 0], ["Stuffed", 2]],
		piz_meat: [["Pepperoni", 2], ["Sausage", 2], ["Ham", 2], ["Chicken", 2], ["None", 0]],
		piz_veggies: [["Peppers", 1], ["Onions", 1], ["Mushrooms", 1], ["Olives", 1], ["None", 1]],
		piz_sauces: [["Tomato", 0], ["Alfredo", 0], ["Spicy", 0], ["None", 0]],
		piz_special_tops: [["Anchovies", 1], ["Pineapple", 1], ["Bacon", 1], ["Extra Cheese", 1], ["None", 0]],
		piz_sizes: [["Small", 10], ["Medium", 12], ["Large", 15], ["Extra Large", 18]],
		sub_breads: [["White", 0], ["Whole Wheat", 0], ["Itallian", 0], ["Herb", 0]],
		sub_sizes: [["6 Inch", 6], ["Foot Long", 10], ["Good Grief", 15]],
		sub_types: [["Chicken", 0], ["Meatball", 0], ["Itallian", 0], ["Dagwood", 0]],
		drink_sizes: [["Small", 2.5], ["Medium", 3], ["Large", 4], ["Extra Large", 6]],
		drink_types: [["Coke", 0], ["Diet Coke", 0], ["Sprite", 0], ["Dr. Pepper", 0]],
		side_types: [["Fries", 4], ["Onion Rings", 6], ["Potato Chips", 3]],
		desserts: [["Chocolate Cake", 2], ["Pudding", 1.5], ["Chocolate Chip Cookie", 1]]
	}
end


def show_order(order)
	for x in (1..order.length)
		if order[0] == "Pizza" || order[0] == "Sub" || order[0] == "Drink"
			print "#{order[x][0]} - $" 
			print "#{order[x][2]}"
		else
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


def sides_order(order, database, item_count)

	system "clear"
	system "cls"
	selection = 0
	puts ""
	puts "Select your side from the following:"

	for x in (0...database[:side_types].length)
	puts "#{x+1} - #{database[:side_types][x][0]}: $#{database[:side_types][x][1]}"
	end

	until selection.between?(1, database[:side_types].length)
		puts "Enter the number that is next to your selection"
		selection = gets.chomp
		selection = selection.to_i 
	end	
	item_count += 1
	order[item_count] = database[:side_types][selection - 1]
	order[item_count].unshift('Side')
	return [order, item_count]
end


def drink_order(order, database, item_count)
	item_count += 1
	order[item_count] = []
drinks = database[:drink_types]
sizes = database[:drink_sizes]

drink_value = [sizes, drinks]
value_name = ["Kind", "Drink Size"]

	for count in (0...drink_value.length)

		system "clear"
		system "cls"
		selection = 0

		puts "Select your drink #{value_name[count]} from the following:"
		puts ""
		for x in (0...drink_value[count].length)

			puts "#{x+1} - #{drink_value[count][x][0]}" 
			#" $#{piz_value[count][1]}"
		end

			until selection.between?(1, drink_value[count].length)
				puts "Enter the number that is next to your selection"
				selection = gets.chomp
				selection = selection.to_i 
			end	

			if drink_value[count] == sizes 
				order[item_count].push(drink_value[count][selection - 1][0])
				order[item_count].push(drink_value[count][selection - 1][1])
			else
				order[item_count].push(drink_value[count][selection - 1][0])
			end

		end
	system "clear"
	system "cls"

	order[item_count].unshift('Drink')

	return [order, item_count]
end


def calculate_owe(order, owe)


	for x in (1...(order.length + 1))
		owe = owe + order[x][2]
	end
	return owe 
end

def check_input
	check = "nil"
	until check == "yes" || check == "no"
	check = gets.chomp
	puts "Input yes or no"
	end
	return check
end

def pizza_ordering(database, item_count, order)
	item_count += 1
	order[item_count] = []
sizes = database[:piz_sizes]
crusts = database[:piz_crusts]
sauces = database[:piz_sauces]
meats = database[:piz_meat]
veggies = database[:piz_veggies]
special_tops = database[:piz_special_tops]
piz_value = [sizes, crusts, sauces, meats, veggies, special_tops]
value_name = ["Pizza Size", "Pizza Crust", "Pizza Sauce", "Pizza Meat", "Pizza Veggie", "Special Topping"]

	for count in (0...piz_value.length)

		system "clear"
		system "cls"
		selection = 0

		puts "Select your pizza #{value_name[count]} from the following:"
		puts ""
		for x in (0...piz_value[count].length)

			puts "#{x+1} - #{piz_value[count][x][0]}" 
			#" $#{piz_value[count][1]}"
		end

			until selection.between?(1, piz_value[count].length)
				puts "Enter the number that is next to your selection"
				selection = gets.chomp
				selection = selection.to_i 
			end	

			if piz_value[count] == sizes 
				order[item_count].push(piz_value[count][selection - 1][0])
				order[item_count].push(piz_value[count][selection - 1][1])
			else
				order[item_count].push(piz_value[count][selection - 1][0])
			end

#add extra meats	
			if piz_value[count][selection - 1][0] == "None"
			elsif piz_value[count] == meats 
				meat_selection = 0
				loop do 
					puts "Do you want more meat on your pizza? (yes or no)"
					puts "Each additional meat selection is $2.00."
					check = check_input()
				break if check == "no"
					

					for x in (0...meats.length - 1)
						puts "#{x+1} - #{meats[x][0]}"
					end

					until meat_selection.between?(1, meats.length)
						puts "Enter the number that is next to your selection"
						meat_selection = gets.chomp
						meat_selection = meat_selection.to_i 
					end

					order[item_count].push(meats[meat_selection - 1][0])
					puts ""
				
					order[item_count][1] = order[item_count][1] + piz_value[count][meat_selection - 1][1]
				
				end
			end

#add extra veggies
			if piz_value[count][selection - 1][0] == "None"
			elsif piz_value[count] == veggies 
				veggie_selection = 0
				loop do 
					puts "Do you want more veggies on your pizza? (yes or no)"
					puts "Each additional veggie selection is $1.00."
					check = check_input()
				break if check == "no"
					

					for x in (0... veggies.length - 1)
						puts "#{x+1} - #{veggies[x][0]}"
					end

					until veggie_selection.between?(1, veggies.length)
						puts "Enter the number that is next to your selection"
						veggie_selection = gets.chomp
						veggie_selection = veggie_selection.to_i 
					end

					order[item_count].push(veggies[veggie_selection - 1][0])
					puts ""
				
					order[item_count][1] = order[item_count][1] + piz_value[count][veggie_selection - 1][1]
				
				end
			end

#add extra specials
			if piz_value[count][selection - 1][0] == "None"
			elsif piz_value[count] == special_tops 
				special_selection = 0
				loop do 
					puts "Do you want more extra toppings on your pizza? (yes or no)"
					puts "Each additional extra topping is $1.00."
					check = check_input()
				break if check == "no"
					

					for x in (0... special_tops.length - 1)
						puts "#{x+1} - #{special_tops[x][0]}"
					end

					until special_selection.between?(1, special_tops.length)
						puts "Enter the number that is next to your selection"
						special_selection = gets.chomp
						special_selection = special_selection.to_i 
					end

					order[item_count].push(special_tops[special_selection - 1][0])
					puts ""
				
					order[item_count][1] = order[item_count][1] + piz_value[count][special_selection - 1][1]
				
				end
			end
	end
	system "clear"
	system "cls"

	order[item_count].unshift('Pizza')

	return [order, item_count]
end


def sub_ordering(order, database, item_count)
	item_count += 1
	order[item_count] = []
sizes = database[:sub_sizes]
breads = database[:sub_breads]
types = database[:sub_types]
special_tops = database[:piz_special_tops]
sub_value = [sizes, breads, types]
value_name = ["Sub Size", "Sub Bread", "Sub Type"]

	for count in (0...sub_value.length)

		system "clear"
		system "cls"
		selection = 0

		puts "Select your #{value_name[count]} from the following:"
		puts ""
		for x in (0...sub_value[count].length)

			puts "#{x+1} - #{sub_value[count][x][0]}" 
			#" $#{piz_value[count][1]}"
		end

			until selection.between?(1, sub_value[count].length)
				puts "Enter the number that is next to your selection"
				selection = gets.chomp
				selection = selection.to_i 
			end	

			if sub_value[count] == sizes 
				order[item_count].push(sub_value[count][selection - 1][0])
				order[item_count].push(sub_value[count][selection - 1][1])
			else
				order[item_count].push(sub_value[count][selection - 1][0])
			end

	end

	system "clear"
	system "cls"

	order[item_count].unshift('Pizza')

	return [order, item_count]
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
	elsif category == 1
		order, item_count = pizza_ordering(database, item_count, order)
	elsif category == 2
		order, item_count = sub_ordering(order, database, item_count)
	elsif category == 3
		order, item_count = sides_order(order, database, item_count)	
	elsif category == 4
		order, item_count = drink_order(order, database, item_count)
	end
	continue = add_item(order)
end

owe = calculate_owe(order, owe)
puts "Your final order is"
puts ""
show_order(order)
tax = owe * 0.06
puts ""
puts "Your tax is $#{tax}"
puts "You owe $#{owe + tax }"
puts "Have a nice day!"

