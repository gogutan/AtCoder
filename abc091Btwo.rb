n = gets.to_i
blue_cards = []
n.times { blue_cards << gets.chomp.to_s }
m = gets.to_i
red_cards = []
m.times { red_cards << gets.chomp.to_s }
kinds = (blue_cards + red_cards).uniq
results = kinds.map { |kind| blue_cards.count(kind) - red_cards.count(kind) }
results << 0
puts results.max
