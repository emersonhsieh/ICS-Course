#Grandfather clock

h = Time.new.hour
if h % 12 == 0
	h = 12
else
	h = h % 12
end

#puts("#{h}")

for j in 1..10 
	puts("DONG!")
end

#ary = 1..10
#puts("#{ary}")