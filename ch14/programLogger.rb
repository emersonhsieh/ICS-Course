def loggerpro description, &block
	puts("Beginning \"#{description}\" ...")
	block.call
	puts("...\"#{description}\" finished, returning:")
end

# void block
loggerpro "bob" do
	loggerpro "asdf" do
		loggerpro "adsfsad" do
		
		end
	end
end