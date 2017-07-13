def grandfatherClock &block
  h = Time.new.hour
  if h % 12 == 0
    h = 12
  else
    h = h % 12
  end

  (1..h).each do |x|
    block.call
  end
end

grandfatherClock do
  puts("DONGDONG")
end

grandfatherClock do
  puts("HELLO")
end
