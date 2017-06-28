def english_number number
	if number < 0
		return 'No negative numbers'
	end
	if number == 0
		return 'zero'
	end
	
	num_string = ''
	
	ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'] 	
	
	places = ['thousands', 'million', 'billion', 'trillion', 'quadrillion']
	
	left = number
	
	# Begin iterations of > 10**3
	#i begins from i and decreases to 0

	i = places.length
	i = i-1
	
	while i >= 0
		write = left/10**((i+1)*3)
		left = left - write*10**((i+1)*3)
		
		if write > 0
			name = english_number write
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
		hundreds = english_number write
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


for i in 0..9999

	nb = 9999-i
	
	if nb == 1
		puts(english_number(nb).capitalize + " bottle of beer on the wall, " + english_number(nb) + " bottle of beer.")
		puts("Take one down and pass it around, no more bottles of beer on the wall.")
	elsif nb == 0
		puts("No more bottles of beer on the wall, no more bottles of beer. ")
		puts("Go to the store and buy some more, 9999 bottles of beer on the wall.")
	else
		puts(english_number(nb).capitalize + " bottles of beer on the wall, " + english_number(nb) + " bottles of beer.")
		
		nb = nb-1
		
		if nb == 1
			puts("Take one down and pass it around, " + english_number(nb) + " bottle of beer on the wall.")
		else
			puts("Take one down and pass it around, " + english_number(nb) + " bottles of beer on the wall.")
		end
	end
	
  puts("")
  
end