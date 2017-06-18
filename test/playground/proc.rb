toast = Proc.new do |arg, arg2, proc3, name|
	puts "#{arg} #{arg2}"
	proc3.call(name)
end

hello = Proc.new do |name|
	puts("#{name} says hello")
end

toast.call("Argument1", "Argument 2", hello, "Bob")

