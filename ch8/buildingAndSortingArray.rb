#var = gets.chomp
#var = var.delete(" ")
#puts var.empty?

ar = []
i = 0

while true
	str = gets.chomp
	
	if !str.delete(" ").empty?
		ar[i] = str
		i = i+1
	else
		break
	end
end

puts ar.sort.to_s

