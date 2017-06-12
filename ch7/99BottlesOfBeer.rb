for i in 0..99

	nb = 99-i
	
	if nb == 1
		puts(nb.to_s + " bottle of beer on the wall, " + nb.to_s + " bottle of beer.")
		puts("Take one down and pass it around, no more bottles of beer on the wall.")
	elsif nb == 0
		puts("No more bottles of beer on the wall, no more bottles of beer. ")
		puts("Go to the store and buy some more, 99 bottles of beer on the wall.")
	else
		puts(nb.to_s + " bottles of beer on the wall, " + nb.to_s + " bottles of beer.")
		
		nb = nb-1
		puts("Take one down and pass it around, " + nb.to_s + " bottles of beer on the wall")
	end
	
end