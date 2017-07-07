require('yaml')

def save filename, ary
	if File.exist?(filename)   
		puts("File Already Exists; do you want to overwrite the file (Y/N)?")
    r = 'a'
    while r.downcase != 'n' && r.downcase != 'y'
      r = gets.chomp
    end
    if r.downcase == 'y'
      File.open filename, 'w' do |f|
        f.write(ary.to_yaml)
      end
      puts("File Overwritten")
    else
      puts("File not overitten")
    end
    
	else
    File.open filename, 'w' do |f|
			f.write(ary.to_yaml)
		end
		puts("File Written")
	end
end

def read filename
	str = File.read filename
	ary = YAML::load str
	puts("File Loaded")
	return ary
end

ar = ["htc", "etaoinshrdlu", "surface", "formaldehyde", "oganesson", "berkeley", "methane", "tachyon"]

save("random.txt", ar)
bob = read "random.txt"