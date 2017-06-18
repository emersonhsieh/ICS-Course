#Dir.chdir 'newmusic'

def save filename, ary
	File.open filename, 'w' do |f|
		f.write(ary.join("\n"))
	end
	puts("File Written")
	return nil
end

def shuffle ary
	i = ary.length

	i = i-1

	for j in 0..i
		n = rand(i)
		temp = ary[i]
		ary[i] = ary[n]
		ary[n] = temp
	end

	for j in 0..i
		n = rand(i)
		temp = ary[i]
		ary[i] = ary[n]
		ary[n] = temp
	end
	
	return ary
end

list = Dir['**/*.{ogg}']
shuffle(list)
#puts(list)

save('playlistImproved.m3u', list)
