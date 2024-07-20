_, T, P = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i)
T.times do |i|
  next if ls.filter { |l| l + i >= T }.size < P

  puts i
  break
end
