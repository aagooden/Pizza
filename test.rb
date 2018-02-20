# desserts = ["Chocolate Cake", "Pudding", "Chocolate Chip Cookie"]

# def dessert_order(desserts)
# 	dessert_selection = 0
# 	until dessert_selection.between?(1, 3)
# 		puts "Select your dessert"
# 		puts desserts
# 		dessert_selection = gets.chomp
# 		dessert_selection = dessert_selection.to_i
# 		puts " "
# # 	end	
# # end
# order = Hash.new
# item_count = 1
# until item_count >= 10 
# 	order[item_count] = ["Cheese", item_count]
# 	item_count += 1
# end
# 	puts order
# 	puts ""
# 	puts order[1][1]
# 	puts ""
# count = 0
# until count > order.length
# 	puts order[count]
# 	count +=1
# end
	#puts "test #{order["1"][0]}"


while true
  puts 'Proceed? Y/n'

  if STDIN.gets.chomp == 'Y'
    while true
    puts "main task"
    end
  end

end


# 	database = 
# 	# database = {
# 	# "piz_crusts" => ["Thick", "Thin", "Pan", "Stuffed"],
# 	# "piz_meats" => ["Pepperoni", "Sausage", "Ham", "Chicken"],
# 	# "piz_veggies" => ["Peppers", "Onions", "Mushrooms", "Peas"],
# 	# "piz_sauces" => ["Tomato", "Ranch", "Itallian", "Spicy"],
# 	# "piz_special_tops" => ["Anchovies", "Pineapple"],
# 	# "piz_sizes" => ["Small", "Medium", "Large", "Extra Large"],
# 	# "sub_breads" => ["White", "Whole Wheat", "Itallian", "Herb"],
# 	# "sub_sizes" => ["6 Inch", "Foot Long", "Good Grief"],
# 	{desserts: [["Chocolate Cake", 2.00], ["Pudding", 1.50], ["Chocolate Chip Cookie", 1.00]]}

# x = database[:desserts][0][1]

# database[:desserts].each do |key, array|
#   puts "#{key}-----"
#   puts array
# end
# 	puts x

#puts database[1]

# database[1].each do |x|
# 	print "#{x[0]}  -  $#{x[1]} \n"
# end

# puts database[1][0].length


# n = database["desserts"].length
# 	puts n
# z = database["piz_meats"].length
# puts "meats is #{z}"
# puts database["desserts"][0]

# 	for x in (0...database["desserts"].length)
# 	puts "#{x+1} - #{database["desserts"][x]}"
# 	end


# 	database["desserts"].each do |x|
# 		print " #{x.keys} -" 
# 		print "#{x.each_value {|x|}}"
		
