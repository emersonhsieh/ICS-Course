# Shuffle Function for Array Class

class Array
	def shuffle
		i = self.length - 1
		
		for j in 0..i
			k = rand i
			
			temp = self[j]
			self[j] = self[k]
			self[k] = temp
		end
		
		return self
	end
end

ar = ["Sather", "htc", "asdf", "CNR", "EECS", "Canada", "surface", "formaldehyde", "oganesson", "Dirks" ,"berkeley", "methane", "tachyon"]

ar.shuffle

puts(ar)

# Factorial for any Integer

class Integer
	def factorial
		if self <= 1
			return 1
		else
			j = self - 1
			return self*(j.factorial)
		end
	end
end

factor = 5.factorial

puts(factor)

# Integer to Words

class Integer
	# Taken from englishNumberExtended.rb
	def to_roman
		if self <= 0
			return 'No negative numbers or zero'
		end

    if self > 3000
      return 'Input a number smaller than 3000'
    end
    
    n = self
		
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
end

puts(1945.to_roman)







