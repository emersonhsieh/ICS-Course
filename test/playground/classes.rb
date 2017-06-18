class Die
	# Class variable
	@@n = 5
	
	def initialize
		# Instance variable
		@i = 3
	end
	
	def new
		puts("Hello")
	end
	
	def print
		return @i
	end
	
	def self.n
		return @@n
	end
end

num = Die.new

num.new

puts(num.to_s)

puts num.print
puts num.instance_variables

puts(Die.n)
#puts(num.n) - is error because class variable

#puts(Die.print) - is error because instance variable
puts(num.print)