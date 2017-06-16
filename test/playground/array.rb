chapters = ["berkeley", "oski", "eecs", "haas"]

#print array

chapters.each{|array| puts array }

puts("")

chapters.each do |array|
	puts(array)
end

puts("")

#capitalize array
#exclamation mark maps array onto itself
chapters.map!{|array| array.capitalize}

puts chapters

puts("")

chapters.map! do |array|
	array = "bob"
end

puts chapters

chapters.remove("bob")

puts chapters
