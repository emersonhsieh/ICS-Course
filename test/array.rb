chapters = ["berkeley", "oski", "eecs", "haas"]

#print array

chapters.each{|array| puts array }

#capitalize array
#exclamation mark maps array onto itself
chapters.map!{|array| array.capitalize}

puts chapters