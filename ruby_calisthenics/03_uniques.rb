# Write a method uniques which takes an array of items and returns the array without any
# duplicates. Don’t use Ruby’s uniq method!

def uniques(collection)
	new_collection = []

	collection.each do |item|
		if !new_collection.include?(item)
			new_collection << item
		end
	end
	new_collection
end

puts uniques([1,5,'frog', 2,1,3,'frog'])