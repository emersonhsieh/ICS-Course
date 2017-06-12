#2017/06/11

n = gets.chomp.to_i
r = gets.chomp.to_i

p = n-r*(n/r).floor
puts p

d = n%r
puts d