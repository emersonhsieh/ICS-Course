# Function

def eecs n
	for i in 1..n 
		puts "eecs"
	end
	
	return "end message"
end

n = gets.chomp
puts eecs(n.to_i)