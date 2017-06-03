puts("Starting year")
yrb = gets.chomp.to_i
puts("Ending year")
yre = gets.chomp.to_i

puts("These are leap years")
for i in yrb...yre
	if i%4 == 0
		if i%100 != 0 || i%400 == 0 
			puts(i.to_s)
		end
	end
end