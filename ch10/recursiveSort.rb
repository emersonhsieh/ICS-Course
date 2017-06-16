=begin
Instructions to self

	use anchor to find smallest term
	remove smallest term from unsorted
	push smallest term to sorted list
	recursion again.
	
	Insertion Sort Algorithm
=end

unsorted = ["htc", "asdf", "surface", "formaldehyde", "oganesson", "berkeley", "methane", "tachyon"]

def recursive_sort ary, sary
	
	if ary.length == 0
		# unsorted bin is empty
		return sary
	end
	
	# anchor to compare with
	small = ary.pop
	
	i = 0
	
	ary.each do |n|
		
		#puts("Compn:" + n)
		#puts("Tos:  " + small)
		#puts("")
		
		if n < small
			# n is smaller than small
			# replace n in array with small
			# replace small with n
			ary[i] = small			
			small = n
		
		# else, small is the smaller.
		end
		
		i = i + 1
	end
	
	#puts("")
	#puts(ary)
	#puts("")
	sary.push(small)
	
	recursive_sort(ary, sary)
end

sorted = recursive_sort(unsorted, [])
puts(sorted)