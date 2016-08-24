# Write a method is_prime? which takes in a number 
# and returns true if it is a prime number.

def is_prime?(number)
  if number == 0 || number == 1
    false
  else
    integers = (2...number).to_a
    integers.each do |integer|
      result = number % integer
      if result == 0
        return false
      end
    end
    true
  end
end

puts is_prime?(7)
puts is_prime?(14)