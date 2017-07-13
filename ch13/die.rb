class Die
  def initialize
    roll
  end
  
  def roll
    @number_showing = 1 + rand(6)
  end
  
  def showing
    @number_showing
  end 
  
  def cheat n
    if n>=1 && n<=6
      @number_showing = n
    else
      puts "Cheating failed; value must be between one and six"
    end
  end
end

puts Die.new.showing

cheat_die =  Die.new
cheat_die.cheat(3)
puts(cheat_die.showing)

failed_cheat_die =  Die.new
failed_cheat_die.cheat(7)
puts(failed_cheat_die.showing)