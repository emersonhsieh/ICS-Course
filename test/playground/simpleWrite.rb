File.open 'new.txt', 'w' do |f|
	f.write "Hello"
end

read_string = File.read 'new.txt'

puts read_string




require 'yaml'
ar = ["1","2","3"]
ts = ar.to_yaml

puts ts


#read_array = YAML::load read_string