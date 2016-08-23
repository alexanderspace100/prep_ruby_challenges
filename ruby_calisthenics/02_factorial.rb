# Write a method factorial which takes a number and returns the product of every number up to the
# current number multiplied together.

def factorial(number)
	product = 1
	number.times.with_index {|index| product *= index + 1}
	product
end

puts factorial(5)
puts factorial(6)