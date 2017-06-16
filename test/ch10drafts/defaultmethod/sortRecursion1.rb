=begin

find smallest in unsorted
move element to smallest in sort


recursion is for functions that decrease by one every time.

find smallest element in array
but in order to do so, I need to sort further, one level.
but in order to do so, I need to sort further.

sort

--======================================================================================

push pushes the item into the first slot, and pushes the rest of the array forward
pop pops off the last value, reducing array length by 1

MySirG.com sorting algorithm
- finds maximum term of unsorted.
- moves maximum term to the top of the sort
- find maximum term of next sorted


=end

sorted = []
unsorted = []

#unsorted = ["a", "b", "c", "d", "e", "f", "g", "h"]
unsorted = ["htc", "kindle", "surface", "formaldehyde", "oganesson", "berkeley", "methane", "tachyon"]

l = unsorted.length

smallest = 0

def recur_sort unsorted, sorted
	# Largest index: ary[ary.each_with_index.max[1]]
	
	if unsorted.length == 0
		# this is sorted already
		return sorted
	end
	
	sorted.push(unsorted[unsorted.each_with_index.max[1]])
	unsorted.delete(unsorted[unsorted.each_with_index.max[1]])
	
	return recur_sort(unsorted, sorted)
end

def sort some_array
	recur_sort(some_array, [])
end

puts(sort(unsorted))


=begin
#sample function from the book.

def recursive_sort unsorted, sorted
	# Must also call recursive_sort
	
	if unsorted.length == 0
		# this is sorted already
		return sorted
	end
	
	smallest = unsorted.pop
	still_unsorted = []
	
	unsorted.each do |tested_object|
		if tested_object < smallest
			still_unsorted.push smallest
			smallest = tested_object
		else
			still_unsorted.push tested_object
		end
	end
	
	sorted.push smallest
	recursive_sort(still_unsorted, sorted)
	
end

#Wrapper fucntion


=end
