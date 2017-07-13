require('yaml')

Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

pic_names = Dir['F:/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

pic_number = 1

pic_names.each do |name|
  print '.'
  
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg" 
  end
  
  if File.exist?(new_name)
    "#{new_name} already exists in the current directory. Overwrite existing file (Y/N)?"
    r = 'a'
    while r.downcase != 'n' && r.downcase != 'y'
      r = gets.chomp
    end
    if r.downcase == 'y'
      File.rename name, new_name
      puts("#{new_name} overwritten")
    else
      puts("#{new_name} not overitten")
    end
  else
    File.rename name, new_name
  end
  
  pic_number = pic_number + 1
end

puts
puts 'Done, cutie!'
