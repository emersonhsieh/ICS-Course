# 2017/06/10

def ask(question)
	while true
		puts question
		reply = gets.chomp.downcase
		
		case reply
		when 'yes'
			return true
		when 'no'
			return false
		else
			puts 'Please answer "yes" or "no".'
		end
		
	end
end

puts(ask("Do you like Ruby"))
