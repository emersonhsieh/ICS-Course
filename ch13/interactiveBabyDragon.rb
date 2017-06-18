# Includes the BabyDragon function outlined in Chapter 13

"Input one of the following command: feed walk put_to_bed toss rock"

cmd = gets.chomp

case cmd

when 'feed'
	puts ("dragon.feed")
	#dragon.feed
when 'put_to_bed', 'put to bed'
	puts ("dragon.put_to_bed")
	#dragon.put_to_bed
when 'toss'
	puts ("dragon.toss")
	#dragon.toss
when 'rock'
	puts ("dragon.rock")
	#dragon.rock
when 'walk'
	puts('dragon.walk')
	#dragon.walk
when 'exit'
	puts("exit")
	exit
else
	puts("Not a valid command")
end