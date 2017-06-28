=begin

class Raindrops
  FACTOR_MAPPINGS = [ [3, 'Pling'], [5, 'Plang'], [7, 'Plong'] ]

  def self.convert(number)
    message = FACTOR_MAPPINGS.map {
      |factor, output| output if number%factor==0
    }.join
    message.empty? ? number.to_s : message
  end
end

module BookKeeping
  VERSION = 3
end

=end


bob = 3

bob == 4 ? 6 : bob

puts(bob)