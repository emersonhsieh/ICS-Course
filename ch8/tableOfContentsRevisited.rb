line_width = 100

ch = ["Chapter 1: Getting Started", "Chapter 2: Numbers", "Chapter 3: Letters"]
p = ["page 1 ", "page 9 ", "page 13"]

puts("Table of Contents".center(107*0.5))

for i in 0..(ch.length-1)
	puts(ch[i].ljust(line_width*0.5) + p[i].ljust(line_width*0.5))
end