=begin
Instructions to self

	use anchor to find smallest term
	remove smallest term from unsorted
	push smallest term to sorted list
	recursion again.
	
	Insertion Sort Algorithm
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

def recursive_sort ary, sary
	
	if ary.length == 0
		# unsorted bin is empty
		return sary
	end
	
	# anchor to compare with
	small = ary.pop
	
	i = 0
	
	ary.each do |n|
		
		#puts("Compn:" + n)
		#puts("Tos:  " + small)
		#puts("")
		
		if n < small
			# n is smaller than small
			# replace n in array with small
			# replace small with n
			ary[i] = small			
			small = n
		
		# else, small is the smaller.
		end
		
		i = i + 1
	end
	
	#puts("")
	#puts(ary)
	#puts("")
	sary.push(small)
	
	recursive_sort(ary, sary)
end

sorted = recursive_sort(unsorted, [])
puts(sorted)