birthdays = {}

str = File.read "birthdays.txt"

str.each_line do |line|
	ar = line.split(', ')
	birthdays[ar[0]] = "#{ar[1]}, #{ar[2]}".chomp
	#puts(birthdays[ar[0]])
end

#puts(birthdays)

print("Insert name of person: ")

name = gets.chomp

if birthdays[name] != nil
	puts "#{name}'s birthday is on #{birthdays[name]}"
else
	puts "No birthday exists for that person"
end
