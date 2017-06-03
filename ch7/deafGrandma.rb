ended = false

while ended == false
	phrase = gets.chomp
	
	if phrase == phrase.upcase
		if phrase == "BYE"
			puts("GOODBYE!")
			ended = true
		else
			n = rand(21)
			yr = 1930 + n
			
			puts("NO, NOT SINCE " + yr.to_s + "!")
		end
	else
		puts("HUH?! SPEAK UP, SONNY!")
	end
end
