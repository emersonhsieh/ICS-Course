=begin
	Insertion Sort Algorithm
	with dictionary
=end

l = 0

while l <= 0
  printf("Enter the length of the array \(must be larger than 0\):  ")
  l = gets.chomp.to_i
  unsorted = []
end

(0...l).each do |x|
  print("Item No. #{x}:  ")
  unsorted[x] = gets.chomp
end

puts("")
puts("Sorted Array:")
puts("")

def dictionary_sort ary, sary
	
	if ary.length == 0
		return sary
	end
	
	small = ary.pop
	i = 0
	
	ary.each do |n|
		if n.downcase < small.downcase
			ary[i] = small			
			small = n
		end
		
		i = i + 1
	end

	sary.push(small)
	
	dictionary_sort(ary, sary)
end

sorted = dictionary_sort(unsorted, [])
puts(sorted)