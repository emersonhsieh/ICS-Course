require('yaml')

def save filename, ary
	if File.exist?(filename)
		puts("File Already Exists; File Not Overwritten")
		return nil
	else
		File.open filename, 'w' do |f|
			f.write(ary.to_yaml)
		end
		puts("File Written")
		return nil
	end
end

def read filename
	str = File.read filename
	ary = YAML::load str
	puts("File Loaded")
	return ary
end

ar = ["htc", "asdf", "surface", "formaldehyde", "oganesson", "berkeley", "methane", "tachyon"]

save("random.txt", ar)
bob = read "random.txt"