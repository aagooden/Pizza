# class GoodDog
# 	def initialize(name)
# 		@name = name
# 	end

# 	def speak
# 		["arf", "woof", "grrr"]
# 	end

# 	def main_toppings
# 		["pepperoni", "ham", "sausage"]
# 	end

# 	def special_toppings
# 	end


# end
# sparky = GoodDog.new("Sparky")


# puts sparky.main_toppings.speak


# class Calculator
# 	def plus(number, other)
# 		number + other
# 	end

# 	def minus(number, other)
# 		number - other
# 	end

# 	def multiply(number, other)
# 		number * other
# 	end

# 	def divide(number, other)
# 		number.to_f / other
# 	end
# end

# calculator = Calculator.new
# puts calculator.plus(2,3)
# puts calculator.minus(5,2)
# puts calculator.multiply(2,3)
# puts calculator.divide(10,2)


class Person

	# def initialize(name)
	# 	@name = name
	# end

	# def name
	# 	@name
	# end

	def password=(password)
		@password = password
	end

end

person = Person.new
person.password = "Cheddar"

person2 = Person.new
person2.password = "Drums"

p person
p person2























