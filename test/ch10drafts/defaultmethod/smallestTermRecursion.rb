unsorted = ["me", "juan", "jon", "andy", "pvc", "enoch", "josh", "dawn"]

def smallestterm ary

	if ary.length != 1
		puts(ary)
		puts("")
		
		s = ary.each_with_index.max[1]
		ary.delete(ary[s])
		
		return smallestterm(ary)
	else
		puts("smallest term found")
		return ary[0]
	end
end

puts(smallestterm(unsorted))

#or just like easier solution

def smallestterm2 ary
	s = ary.each_with_index.min[1]
	return ary[s]
end

largest

ary[ary.each_with_index.max[1]]