=begin

#sorting algorithm new

def sort some_array
	recursive_sort some_array
end

def recursive_sort unsorted

end

find smallest in unsorted
move element to smallest in sort


=end

sorted = []
unsorted = []

#unsorted = ["a", "b", "c", "d", "e", "f", "g", "h"]
unsorted = ["me", "juan", "jon", "andy", "pvc", "enoch", "josh", "dawn"]

l = unsorted.length

smallest = 0

for i in 0..l-1
	# i is the starting position
	#puts(unsortedl[i])
	
	for j in 0..l-i-2
	
		#puts("Comp " + unsorted[j])
		#puts("To   " + unsorted[j+1])
		
		# Finds minimum index
		smallest = unsorted.each_with_index.min[1]
	end
	
	#puts("Smallest: " + unsorted[smallest])	
	sorted[i] = unsorted[smallest]
	
	#remove smallest from unsorted
	unsorted.delete(unsorted[smallest])
	
	#puts("")
end

puts(sorted)


