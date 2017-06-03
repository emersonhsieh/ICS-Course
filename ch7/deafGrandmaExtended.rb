ended = false
byecount = 0

while ended == false
	phrase = gets.chomp
	
	if phrase == phrase.upcase
		if phrase == "BYE"
			byecount = byecount + 1
			if byecount == 3
				puts("GOODBYE!")
				
				ended = true
			else
				puts("HUH?! I DIDN\'T HEAR YOU!")
			end
		else
			n = rand(21)
			yr = 1930 + n
			
			puts("NO, NOT SINCE " + yr.to_s + "!")
		end
	else
		puts("HUH?! SPEAK UP, SONNY!")
	end
end
