l = 0

while l <= 0
  printf("Enter the length of the array \(must be larger than 0\):  ")
  l = gets.chomp.to_i
  a = []
end

(0...l).each do |x|
  print("Item No. #{x}:  ")
  a[x] = gets.chomp
end

puts("")
puts("Shuffled Array:")
puts("")

def shuffle ary
	i = ary.length
	i = i-1

	for j in 0..i
		n = rand(i)
		
		temp = ary[i]
		ary[i] = ary[n]
		ary[n] = temp
	end
	
	return ary
end

shuffle(a)

puts(a)