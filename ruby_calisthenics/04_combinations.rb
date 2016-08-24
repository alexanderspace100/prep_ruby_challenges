# Write a method combinations which takes two arrays of strings and returns an array with all
# of the combinations of the items in them, listing the first items first.

def combinations(collection1, collection2)
	new_collection = []

	collection1.each do |first|
		collection2.each do |last|
			new_collection << first + last
		end
	end
	new_collection
end

puts combinations(['on','in'],['to','rope'])