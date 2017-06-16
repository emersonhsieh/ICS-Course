a = [1,2,3,4,5,6,7,8,9]

def shuffle ary
	i = ary.length
	i = i-1

	for j in 0..i
		n = rand(i)
		
		temp = ary[i]
		ary[i] = ary[n]
		ary[n] = temp
	end
	
	return ary
end

shuffle(a)

puts(a)