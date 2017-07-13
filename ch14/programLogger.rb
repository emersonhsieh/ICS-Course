def loggerpro description, &block
	puts("Beginning \"#{description}\" ...")
	output = block.call
  # add return
	puts("...\"#{description}\" finished, returning: #{output}")
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
