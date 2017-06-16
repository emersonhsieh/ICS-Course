=begin
	Insertion Sort Algorithm
	with dictionary
=end

unsorted = ["Sather", "htc", "asdf", "CNR", "EECS", "Canada", "surface", "formaldehyde", "oganesson", "Dirks" ,"berkeley", "methane", "tachyon"]

def dictionary_sort ary, sary
	
	if ary.length == 0
		return sary
	end
	
	small = ary.pop
	i = 0
	
	ary.each do |n|
		if n.downcase < small.downcase
			ary[i] = small			
			small = n
		end
		
		i = i + 1
	end

	sary.push(small)
	
	dictionary_sort(ary, sary)
end

sorted = dictionary_sort(unsorted, [])
puts(sorted)