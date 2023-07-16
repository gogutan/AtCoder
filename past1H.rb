n = gets.to_i
cards = gets.split.map(&:to_i)
q = gets.to_i
queries = []
q.times { queries << gets.split.map(&:to_i) }
sold = 0
odd_sold = 0
all_sold = 0
min = cards.min
odd_min = cards.select.with_index { |c, i| i.even? }.min

queries.each do |a, b, c|
  case a
  when 1
    rest = cards[b - 1] - all_sold
    rest -= odd_sold if b.odd?
    if  rest >= c
      cards[b - 1] -= c
      sold += c
      min = [min, rest - c].min
      odd_min = [odd_min, rest - c].min if b.odd?
    end
  when 2
    if odd_min >= b
      odd_sold += b
      odd_min -= b
      min = [min, odd_min].min
    end
  when 3
    if min >= b
      all_sold += b
      min -= b
      odd_min -= b
    end
  end
end

puts sold + odd_sold * (n / 2.0).ceil + all_sold * n
