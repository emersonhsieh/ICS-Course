unsorted = ["htc", "kindle", "surface", "formaldehyde", "oganesson", "berkeley", "methane", "tachyon"]

# finds smallest term of the array to prepare for insertion sort

def smallest ary
	
	small = ary.pop
	
	ary.each do |n|
		if n < small
			# n is smaller than small
			# replace n in array with small
			# replace small with n
			ary.push(small)
			ary.delete(n)
			
			small = n
		
		# else, small is the smallest.
		end
	end
	
	puts(small)
	
	puts ""
	puts ary
end

smallest(unsorted)