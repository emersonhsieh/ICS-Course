#2017/06/11, simplified version of oldRomanold.rb
n = gets.chomp.to_i

# I V X L C D M

def romanize(n)
	str= ""
  r = [[1000, "M"],[500, "D"],[100, "C"],[50,"L"],[10,"X"],[5,"V"],[1,"I"]]

	
	r.each do |array|
		num = array[0]
		s = array[1]
	
		for i in 1..(n/num).floor
			str = str + s
		end
		n = n%num
	end
	
	return str
end

puts(romanize(n))