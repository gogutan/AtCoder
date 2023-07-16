INF = 10 ** 9

n, k = gets.chomp.split(" ").map(&:to_i)
candles = gets.chomp.split(" ").map(&:to_i)

if candles.include?(0)
  k -= 1
  candles.delete(0)
end

if k == 0
  puts 0
  exit
end

minus_candles = []
plus_candles = []

candles.each do |candle|
  if candle < 0
    minus_candles << candle.abs
  else
    plus_candles << candle
  end
end

minus_candles.reverse!

([k - minus_candles.length, 0].max).times do
  minus_candles << INF
end

([k - plus_candles.length, 0].max).times do
  plus_candles << INF
end

costs = []

minus_candles.each_with_index do |minus_candle, index|
  if k - index - 2 >= 0
    costs << minus_candle + plus_candles[k - index - 2] * 2
    costs << minus_candle * 2 + plus_candles[k - index - 2]
  end
end

costs << plus_candles[k - 1]
costs << minus_candles[k - 1]

puts costs.min