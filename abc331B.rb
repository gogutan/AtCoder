n, s, m, l = gets.split.map(&:to_i)
ans = 10 ** 10

101.times do |i|
  101.times do |j|
    101.times do |k|
      price = s * i + m * j + l * k
      sum = 6 * i + 8 * j + 12 * k
      ans = [ans, price].min if sum >= n
    end
  end
end

puts ans
