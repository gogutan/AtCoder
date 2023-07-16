n = gets.to_i
sticks = gets.split.map(&:to_i)
sides = [0, 0]
sticks.tally.each do |k, v|
  if v >= 4
    2.times { sides << k }
  elsif v >= 2
    sides << k
  end
end
puts sides.sort.reverse[0, 2].inject(:*)
