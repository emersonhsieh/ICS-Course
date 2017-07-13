=begin

Goal: To create an Orange Tree

Grows every year and height increases by one

No fruit grows until 10th year; after that, 10 fruit produced per year; reset each year

countoranges
	return number of oranges

pickfruit
	if fruit then fruit decreases by 1
	else say no more fruit
=end

class OrangeTree
	def initialize
		@fruits = 0
		@age = 0
		@dead = false
		@h = 0
	end
	
	def one_year_passes
		if !@dead
			@age = @age + 1
			@h = @h + 10
			
			@fruits = 0
			
			if @age >= 10
				@fruits = 10 + @age
			end
			
			if @age < 21
				return "The tree is now #{@age} years old, #{@h} m tall, and has #{@fruits} fruits."
			else
				@dead = true
				return "The tree is now dead."
			end
		else
			return "The tree is now dead."
		end
	end
  
  def age
    if !@dead
      return "The tree is now #{@age} years old."
    else
      one_year_passes
    end
  end
	
	def height
    if !@dead
      return "The tree is now #{@h} m tall."
    else
      one_year_passes
    end
	end
	
	def count_the_oranges
    if !@dead
      return "The tree has #{@fruits} fruits."
    else
      one_year_passes
    end
	end
	
	def pick_an_orange
		if @fruits > 0
			@fruits = @fruits - 1
			return "Oranges are nice. There are #{@fruits} left."
		else
			return "No more oranges on tree."
		end
	end
end

bob = OrangeTree.new
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.pick_an_orange)
puts(bob.count_the_oranges)
puts(bob.height)

puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)
puts(bob.one_year_passes)

puts("After the tree dies, I attempt to find the age of the tree.")

puts(bob.age)
puts(bob.height)
puts(bob.count_the_oranges)
