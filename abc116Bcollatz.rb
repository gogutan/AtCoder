s  =gets.chomp.to_i

ss = []
previous = s
ss << previous
until ss.count(previous) == 2
  if previous.even?
    ss << previous / 2
    previous = previous / 2
  else
    ss << previous * 3 + 1
    previous = previous * 3 + 1
  end
end

puts ss.length