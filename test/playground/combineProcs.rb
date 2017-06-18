combine = Proc.new do |proc1, proc2|
	# returns a proc
	Proc.new do |x|
		proc2.call(proc1.call(x))
	end
end

add1 = Proc.new do |x|
	x+1
end

square = Proc.new do |x|
	x*x
end

bob = combine.call(add1, square)

puts(bob.call(5))