#2017/06/11, simplified version of oldRomanold.rb
n = gets.chomp.to_i

# I V X L C D M
@r = [[1000, "M"],[500, "D"],[100, "C"],[50,"L"],[10,"X"],[5,"V"],[1,"I"]]

def romanize(n)
	str= ""
	
	@r.each do |array|
		num = array[0]
		s = array[1]
	
		for i in 1..(n/num).floor
			str = str + s
		end
		n = n-num*(n/num).floor
	end
	
	return str
end

puts(romanize(n))