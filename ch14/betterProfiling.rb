=begin

# 2017/06/18
# Improved Profiler based on Chris Pine's work

# structure of proc:
	set a start timer
	call stuff after do with &block
	calculate time duration
	print time duration

=end

#profiler is still only a method

def profiler description, &block
	#change this line to false if no want profiling
	pro = true
	
	if pro
		start = Time.new
		block.call
		duration = Time.new - start	
		puts "#{description} #{duration} s"
	end
end

#hello is first input, &block is second input
profiler "Hello" do
	i = 0
	for i in 1..1000
		puts(i)
		i = i**2
		puts(i)
	end
end