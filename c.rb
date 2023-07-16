def trib(num)
  return 0 if num == 0
  return 0 if num == 1
  return 1 if num == 2

  return trib(num - 1) + trib(num - 2) + trib(num - 3)
end

puts trib(gets.to_i)

