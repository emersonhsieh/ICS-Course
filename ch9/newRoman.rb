#2017/06/11
n = gets.chomp.to_i
# I V X L C D M

def romanize(n)
	str= ""
	for i in 1..(n/1000).floor
		str = str + "M"
	end
	n = n-1000*(n/1000).floor
	
	if ((n/100).floor) == 9
		str = str + "CM"
		n = n-100*(n/100).floor
	elsif ((n/100).floor) == 4
		str = str + "CD"
		n = n-100*(n/100).floor
	else
		for i in 1..(n/500).floor
			str = str + "D"
		end
		n = n-500*(n/500).floor
		
		for i in 1..(n/100).floor
			str = str + "C"
		end
		n = n-100*(n/100).floor
	end

	if ((n/10).floor) == 9
		str = str + "XC"
		n = n-10*(n/10).floor
	elsif ((n/10).floor) == 4
		str = str + "XL"
		n = n-10*(n/10).floor
	else
		for i in 1..(n/50).floor
			str = str + "L"
		end
		n = n-50*(n/50).floor
		
		for i in 1..(n/10).floor
			str = str + "X"
		end
		n = n-10*(n/10).floor
	end

	if ((n/1).floor) == 9
		str = str + "IX"
	elsif ((n/1).floor) == 4
		str = str + "IV"
	else
		for i in 1..(n/5).floor
			str = str + "V"
		end
		n = n-5*(n/5).floor
		
		for i in 1..(n)
			str = str + "I"
		end
	end
	
	return str
end

puts(romanize(n))