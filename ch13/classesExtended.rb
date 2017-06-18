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
	def to_eng
		if self < 0
			return 'No negative selfs'
		end
		if self == 0
			return 'zero'
		end
		
		num_string = ''
		
		ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
		tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
		teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'] 	
		
		places = ['thousands', 'million', 'billion', 'trillion', 'quadrillion']
		
		left = self
		
		# Begin iterations of > 10**3
		#i begins from i and decreases to 0

		i = places.length
		i = i-1
		
		while i >= 0
			write = left/10**((i+1)*3)
			left = left - write*10**((i+1)*3)
			
			if write > 0
				name = english_self write
				num_string = num_string + name + ' ' + places[i]
				if left > 0
					num_string = num_string + ' '
				end
			end
			
			i = i-1
		end
		
		#Begin regular iterations as shown in the book
		
		#hundreds
		write = left/100
		left = left - write*100
		
		if write > 0
			hundreds = english_self write
			num_string = num_string + hundreds + ' hundred'
			if left > 0
				num_string = num_string + ' '
			end
		end
		
		#tens
		write = left/10
		left = left - write*10
		
		if write > 0
			if write == 1 and left > 0
				num_string = num_string + teenagers[write - 1]
				left = 0
			else
				num_string = num_string + tens_place[write-1]
			end
				
			if left > 0
				num_string = num_string + '-'
			end
		end
		
		write = left
		left = 0
		
		#ones	
		if write > 0
			num_string = num_string + ones_place[write - 1]
		end
		
		return num_string
	end
end

puts(4.to_eng)







