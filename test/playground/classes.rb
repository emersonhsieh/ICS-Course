class Die
	# Class variable
	@@n = 5
	
	def initialize
		# Instance variable
		@i = 3
	end
	
	#constant
	P = 70
	
	def new
		y = 44
		puts("Hello")
		return y
	end
	
	#instance variable
	def print
		return @i
	end
	
	# how to access class variables
	def self.n
		return @@n
	end
end

num = Die.new

puts num.new

puts(num.to_s)
=begin
puts num.print
puts num.instance_variables

puts(Die.n)
#puts(num.n) - is error because class variable

#puts(Die.print) - is error because instance variable
puts(num.print)

# CONSTANT P
puts(Die::P)
=end