$nestdepth = 0
def loggerpro description, &block
	$nestdepth = $nestdepth + 1
	
	print("	"*($nestdepth-1))
	
	puts("Beginning \"#{description}\" ...")
	block.call
	
	print("	"*($nestdepth-1))
	puts("...\"#{description}\" finished, returning:")
	$nestdepth = $nestdepth - 1
end

# void block
loggerpro "bob" do
	loggerpro "asdf" do
		loggerpro "adsfsad" do
		
		end
	end
end

puts("#{"hello"*5}")