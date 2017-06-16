=begin
	Insertion Sort from recursiveSort.rb
	
Instructions to self:
- copy array into temp array
- push all the capitalized entries into a new CAP array
	CAP = CAP

- decapitalize array
- sort array

- check if each entry is supposed to be capitalized
- if so, capitalize.

=end

unsorted = ["Sather", "htc", "asdf", "CNR", "EECS", "Canada", "surface", "formaldehyde", "oganesson", "Dirks" ,"berkeley", "methane", "tachyon"]

def recursive_sort ary, sary
	if ary.length == 0
		# unsorted bin is empty
		return sary
	end
	
	small = ary.pop
	i = 0
	
	ary.each do |n|
		if n < small
			ary[i] = small			
			small = n
		end
		i = i + 1
	end

	sary.push(small)
	recursive_sort(ary, sary)
end

def dictionary_sort a
	#temp array
	b = a
	
	#array with all capitalized entries
	c = []
	
	#put capitalized entries in c, decap b
	k = b.length - 1
	
	for i in 0..k
		if b[i].capitalize == b[i]
			# is capitalized
			c.push(b[i])
		end
		
		b[i] = b[i].downcase
	end
	
	b = recursive_sort(b, [])
	
	l = c.length - 1
	
	for i in 0..k
		for j in 0..l
			if c[j] == b[i].capitalize
				b[i] = c[j]
			end
		end
	end
	
	return b
end

sorted = dictionary_sort(unsorted)
puts(sorted)