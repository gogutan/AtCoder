n = gets.chomp.to_i
options = [111, 222, 333, 444, 555, 666, 777, 888, 999]
ans = 0
options.each do |option|
  if option >= n
    ans = option
    break
  end
end
puts ans