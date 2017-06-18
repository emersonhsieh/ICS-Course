#2017/06/17
#Roman numbers to Integer

s = gets.chomp

# I V X L C D M
#IV, IX, XL, XC, CD, CM

# Append = <<

def deromanize(s)
	
	sum = 0
	
	s = s.upcase
	l = s.length - 1
	
	#tests = s.gsub(/[IVXLCDM]/, "")
	tests = s.delete "IVXLCDM"
	
	#puts(tests.length)
	
	if tests.length > 0
		puts("Not a valid Roman numeral")
		return 0
	else
		#puts("Proceed")
	end
	
	i = 0
	
	while i <= l
		#iterate each character in each string
		# if vldm, simply add, move pointer by 1
		# if i
		#	if next char is V or X add and move pointer by 2
		# 	also if next char does not exist
		# if x
		#	if next char is L or C add and move pointer by 2
		# if C
		#	if next char is D or M add and move pointer by 2
		# else  for all statementssimply add and move pointer by 1
		
		case s[i]
		
		when 'V'
			sum = sum + 5
			i = i + 1
		when 'L'
			sum = sum + 50
			i = i + 1
		when 'D'
			sum = sum + 500
			i = i + 1
		when 'M'
			sum = sum + 1000
			i = i + 1
		when 'I'
			if (i+1) > l
				sum = sum + 1
				i = i + 1
			else
				case s[i+1]
				when 'V'
					sum = sum + 4
					i = i + 2
				when 'X'
					sum = sum + 9
					i = i + 2
				else
					sum = sum + 1
					i = i + 1
				end
			end
		when 'X'
			if (i+1) > l
				sum = sum + 10
				i = i + 1
			else
				case s[i+1]
				when 'L'
					sum = sum + 40
					i = i + 2
				when 'C'
					sum = sum + 90
					i = i + 2
				else
					sum = sum + 10
					i = i + 1
				end
			end
		when 'C'
			if (i+1) > l
				sum = sum + 100
				i = i + 100
			else
				case s[i+1]
				when 'D'
					sum = sum + 400
					i = i + 2
				when 'M'
					sum = sum + 900
					i = i + 2
				else
					sum = sum + 100
					i = i + 1
				end
			end
		end
		
	#puts("sum = #{sum}")
	#puts("#{i}")
	
	end
	
	return sum
end

#puts(romanize(s))

puts(deromanize(s).to_i)