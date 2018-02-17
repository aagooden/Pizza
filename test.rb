# desserts = ["Chocolate Cake", "Pudding", "Chocolate Chip Cookie"]

# def dessert_order(desserts)
# 	dessert_selection = 0
# 	until dessert_selection.between?(1, 3)
# 		puts "Select your dessert"
# 		puts desserts
# 		dessert_selection = gets.chomp
# 		dessert_selection = dessert_selection.to_i
# 		puts " "
# 	end	
# end


# dessert_order(desserts)


def database()
	database = 
	{
	# piz_crusts => ["Thick", "Thin", "Pan", "Stuffed"],
	# piz_meats => ["Pepperoni", "Sausage", "Ham", "Chicken"]
	# piz_veggies => ["Peppers", "Onions", "Mushrooms", "Peas"]
	# piz_sauces => ["Tomato", "Ranch", "Itallian", "Spicy"]
	# piz_special_tops => ["Anchovies", "Pineapple"]
	# piz_sizes => ["Small", "Medium", "Large", "Extra Large"]
	# sub_breads => ["White", "Whole Wheat", "Itallian", "Herb"]
	# sub_sizes => ["6 Inch", "Foot Long", "Good Grief"]
	"desserts" => ["Chocolate Cake", "Pudding", "Chocolate Chip Cookie"]
	}
end

	puts database["desserts"]