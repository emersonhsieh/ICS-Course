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
    @number_showing = n
  end
end

puts Die.new.showing
cheat_die =  Die.new.cheat(3)
puts(cheat_die)