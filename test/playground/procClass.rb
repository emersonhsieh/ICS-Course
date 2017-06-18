# Proc with class

class Integer
	def proconeven(&proc)
		if self.even?
			proc.call("Not Odd")
		end
	end
end

# &proc refers to block after the x
# the block turns into proc

4.proconeven do |x|
	puts(x)
end