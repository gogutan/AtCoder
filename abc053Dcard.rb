n = gets.to_i
cards = gets.split.map(&:to_i)
len = cards.length
uniq_len = cards.uniq.length
puts (len - uniq_len).even? ? uniq_len : uniq_len - 1
