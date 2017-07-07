y = -1

while y < 0
  puts('What is your year of birth? Enter a number greater than 0.')
  y = gets.chomp.to_i
end

m = 0

while m <= 0 || m > 12
  puts('What is your month of birth? Enter a number between 1 and 12.')
  m = gets.chomp.to_i
end

d = 0

max = 0

case m
when 1,3,5,7,8,10,12
  max = 31
when 2
  max = 29
else
  max = 30
end

while d <= 0 || d > max
  puts('What is your day of birth? Enter a valid day for your birth month.')
  d = gets.chomp.to_i
end

birth = Time.new - Time.local(y, m, d, 0, 0)

birth = birth + 10**9

puts(birth)

@i = 3

def addtoi
	@i = @i + 1
	return nil
end

addtoi

puts @i