n, m = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i).sort
tmp = []
m.times { tmp << gets.split.map(&:to_i) }
tmp << [100000, 0]
tmp.sort! { |a, b| b[1] <=> a[1] }
# p tmp

changables = []
tmp.each do |count, num|
  count.times { changables << num }
  break if changables.size >= n
end
# p changables

(0...n).each do |i|
  changable = changables.shift
  if cards[i] <= changable
    cards[i] = changable
  else
    break
  end
end
# p cards

puts cards.inject(:+)
