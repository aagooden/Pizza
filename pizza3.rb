
def database
	database = {
	"piz_crusts" => ["Thick", "Thin", "Pan", "Stuffed"],
	"piz_meats" => ["Pepperoni", "Sausage", "Ham", "Chicken"],
	"piz_veggies" => ["Peppers", "Onions", "Mushrooms", "Peas"],
	"piz_sauces" => ["Tomato", "Ranch", "Itallian", "Spicy"],
	"piz_special_tops" => ["Anchovies", "Pineapple"],
	"piz_sizes" => ["Small", "Medium", "Large", "Extra Large"],
	"sub_breads" => ["White", "Whole Wheat", "Itallian", "Herb"],
	"sub_sizes" => ["6 Inch", "Foot Long", "Good Grief"],
	"desserts" => ["Chocolate Cake", "Pudding", "Chocolate Chip Cookie"]
	}
end


def dessert_order(database, owe)
	system "clear"
	system "cls"
	dessert_selection = 0
	puts ""
	puts "Select your dessert from the following:"
	for x in (0...database["desserts"].length)
	puts "#{x+1} - #{database["desserts"][x]}"
	end

	until dessert_selection.between?(1, database["desserts"].length)
		puts "Enter the number that is next to your selection"
		dessert_selection = gets.chomp
		dessert_selection = dessert_selection.to_i 
		
	end	

	order = {dessert_selection => database["desserts"][dessert_selection - 1]}
	owe = owe + 1
	return [order, owe] 

	return 
end


def main(database, owe)

	puts "What would you like to order?"
	puts "...just type the number of your selection"
	puts " "
	puts "1 - Pizzas"
	puts "2 - Subs"
	puts "3 - Sides"
	puts "4 - Drinks"
	puts "5 - Desserts"
	puts ""

	answer = 0

	until answer.between?(1, 5)
		answer = gets.chomp
		answer = answer.to_i 
		puts "Enter the number that is next to your selection"
	end	

	if answer == 1
		order, owe = pizza_ordering(database, owe)
	elsif answer == 5
		order, owe = dessert_order(database, owe)
	end

	return [order, owe]
end



order = {}
item_count = 0
owe = 0
owe = owe.to_f
system "clear"
system "cls"
puts "Welcome to Gooden's Pizza Shack"

continue = "nil"

	until continue == "yes" || continue == "no"
		puts "Would you like to and an item to your order?"
		continue = gets.chomp 
	end

	if continue == "yes"
		#calls main function
		order, owe = main(database, owe)
	else
		puts order
		puts owe
		puts "Have a nice day!"
	end



# def owe_calc(pizza_size)
# 	owe_count = 0

# 	pizza_size.each do |x|
# 		if x == "Small"
# 			p = 8
# 		elsif x == "Medium"
# 			p = 10
# 		elsif x == "Large"
# 			p =12
# 		else
# 			p = 15
# 		end
# 		owe_count = owe_count + p
# 	end
# 	return owe_count
# end









# puts "How many pizzas would you like"
# 	num_p = gets.chomp
# 	num_p = num_p.to_i


# pizza_size = []
# crust_type = []
# meat_selection = []
# veggies_selection = []
# sauce_selection = []
# topping_selction = []

# for p in 1..num_p

#Select the size of each pizza
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

# def show_pizzas(num_p, pizza_size, crust_type, meat_selection, veggies_selection, sauce_selection)
# 	for c in 1..num_p
# 		puts "Pizza #{c}" 
# 		puts pizza_size[c-1]
# 		puts crust_type[c-1]
# 		puts meat_selection[c-1]
# 		puts veggies_selection[c-1]
# 		puts sauce_selection[c-1]
# 		puts " "
# 	end
# end

# show_pizzas(num_p, pizza_size, crust_type, meat_selection, veggies_selection, sauce_selection)


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