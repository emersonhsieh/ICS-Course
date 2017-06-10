n = gets.chomp.to_i
# I V X L C D M

def romanize(n)
	str= ""
	for i in 1..(n/1000).floor
		str = str + "M"
	end
	n = n-1000*(n/1000).floor
	
	for i in 1..(n/500).floor
		str = str + "D"
	end
	n = n-500*(n/500).floor
	
	for i in 1..(n/100).floor
		str = str + "C"
	end
	n = n-100*(n/100).floor
	
	for i in 1..(n/50).floor
		str = str + "L"
	end
	n = n-50*(n/50).floor
	
	for i in 1..(n/10).floor
		str = str + "X"
	end
	n = n-10*(n/10).floor
	
	for i in 1..(n/5).floor
		str = str + "V"
	end
	n = n-5*(n/5).floor
	
	for i in 1..(n)
		str = str + "I"
	end
	
	return str
end

puts(romanize(n))