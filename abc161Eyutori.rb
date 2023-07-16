INF = - 1 * 10 ** 6
n, k, c = gets.split.map(&:to_i)
days = gets.chomp.split("")
reversed_days = days.reverse

greedy_from_left = []
prev = INF
days.each_with_index do |day, i|
  next if prev + c >= i
  if day == "o"
    greedy_from_left << i + 1
    prev = i
  end
end

greedy_from_right = []
prev = INF
reversed_days.each_with_index do |day, i|
  next if prev + c >= i
  if day == "o"
    greedy_from_right << n - i
    prev = i
  end
end

if greedy_from_left.size > k || greedy_from_right.size > k
  puts
else
  (greedy_from_left & greedy_from_right).each { |day| puts day }
end
