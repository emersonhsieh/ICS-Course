#2017/06/11
n = gets.chomp.to_i
# I V X L C D M

def romanize(n)
	str= ""
	for i in 1..(n/1000).floor
		str = str + "M"
	end
	n = n%1000
	
	if ((n/100).floor) == 9
		str = str + "CM"
	elsif ((n/100).floor) == 4
		str = str + "CD"
	else
		for i in 1..(n/500).floor
			str = str + "D"
		end
		n = n%500
		
		for i in 1..(n/100).floor
			str = str + "C"
		end
	end
	
	n = n%100

	if ((n/10).floor) == 9
		str = str + "XC"
	elsif ((n/10).floor) == 4
		str = str + "XL"
	else
		for i in 1..(n/50).floor
			str = str + "L"
		end
		n = n-50*(n/50).floor
		
		for i in 1..(n/10).floor
			str = str + "X"
		end
	end
	
	n = n%10
	
	if ((n/1).floor) == 9
		str = str + "IX"
	elsif ((n/1).floor) == 4
		str = str + "IV"
	else
		for i in 1..(n/5).floor
			str = str + "V"
		end
		n = n%5
		
		for i in 1..(n)
			str = str + "I"
		end
	end
	
	return str
end

puts(romanize(n))