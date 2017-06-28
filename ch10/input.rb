# 2017/06/25 Implementation of Array input

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
puts("")

puts unsorted

