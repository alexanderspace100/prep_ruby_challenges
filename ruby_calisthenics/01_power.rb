=begin

Write a method power which takes two integers (base and exponent) and returns 
the base raised to the power of exponent. Do not use Ruby’s ** operator for this!

=end

def power(base, exponent)
	product = 1
	exponent.times {product *= base}
	product
end

puts power(2,2)
puts power(3,3)
