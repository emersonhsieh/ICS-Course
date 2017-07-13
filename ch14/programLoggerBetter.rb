$nestdepth = 0
def loggerpro description, &block
	$nestdepth = $nestdepth + 1
	
	print("	"*($nestdepth-1))
	
	puts("Beginning \"#{description}\" ...")
	result = block.call
	
	print("	"*($nestdepth-1))
	puts("...\"#{description}\" finished, returning: #{result}")
	$nestdepth = $nestdepth - 1
end

# void block
loggerpro "bob" do
	loggerpro "asdf" do
		loggerpro "adsfsad" do
		
		end
	end
end

# block with returns
loggerpro "block1" do
	loggerpro "block2" do
		loggerpro "block3" do
      5
		end
    'hello'
	end
  'this'
end
