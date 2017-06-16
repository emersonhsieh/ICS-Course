#example: 1976/08/03 13:31 GMT
#Time.local(1976, 8, 3, 13, 31)

#time.new = now

puts('What is your year of birth?')
y = gets.chomp

puts('What is your month of birth?')
m = gets.chomp

puts('What is your day of birth?')
d = gets.chomp

s = Time.new - Time.local(y, m, d, 0, 0)

s = (s/(365*24*60*60)).floor

for i in 1..s
	puts("SPANK!")
end