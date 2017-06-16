=begin

Bubble Sort 2017/06/12

Go through each list. for each element, compare with the one above it.
SMALLER = LARGER

if the element is smaller than the one above it, go up until
- it is not smaller than the element on top of it
- no more elements on top

=end

unsortedl = []

unsortedl = ["me", "juan", "jon", "andy", "pvc", "enoch", "josh", "dawn"]
#unsortedl = ["1", "2", "3", "4", "5", "6", "7", "8"]


l = unsortedl.length

for i in 0..l-1
	# i is the starting position
	#puts(unsortedl[i])
	
	for j in 0..l-i-2
		#puts("Comp " + unsortedl[j])
		#puts("To   " + unsortedl[j+1])
		
		#puts(unsortedl[j] > unsortedl[j+1])
		
		if unsortedl[j] > unsortedl[j+1]
			temp = unsortedl[j]
			unsortedl[j] = unsortedl[j+1]
			unsortedl[j+1] = temp
		end
	end
	#puts("")
end

puts(unsortedl)


=begin
for i in 0..l-1
	# i is the starting position
	#puts(unsortedl[i])
	
	for j in i..l-2
		puts("Comp " + unsortedl[j])
		puts("To   " + unsortedl[j+1])
		
		puts(unsortedl[j] > unsortedl[j+1])
		
		if unsortedl[j] > unsortedl[j+1]
			temp = unsortedl[j]
			unsortedl[j] = unsortedl[j+1]
			unsortedl[j+1] = temp
		end
	end
	puts("")
end

upsidedown, wrong


pairs
starting, comparisions number
0 7
1 6
2 5
3 4

=end