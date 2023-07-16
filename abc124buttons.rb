a, b = gets.chomp.split(" ").map(&:to_i)
aquired = 0
2.times do
  if a >= b
    aquired += a
    a -= 1
  else
    aquired += b
    b -= 1
  end
end
puts aquired