n = gets.to_i
n %= 30
cards = [1, 2, 3, 4, 5, 6]
(0...n).each do |i|
  cards[i % 5], cards[i % 5 + 1] = cards[i % 5 + 1], cards[i % 5]
end
puts cards.join
