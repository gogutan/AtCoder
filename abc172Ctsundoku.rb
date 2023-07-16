# n + 1 長の array を返す
def cumulative_sum(array)
  tmp = [0]
  previous = 0
  array.each { |num| tmp << previous += num }
  tmp
end

n, m, k = gets.split.map(&:to_i)
books_1 = gets.split.map(&:to_i)
cumulative_books_1 = cumulative_sum(books_1)
books_2 = gets.split.map(&:to_i)
cumulative_books_2 = cumulative_sum(books_2)
ans = [0]
(0..n).each do |first|
  rest = k - cumulative_books_1[first]
  break if rest < 0
  sec = cumulative_books_2.bsearch_index { |second| rest - second < 0 }
  sec = m + 1 if sec == nil
  sec -= 1
  ans << first + sec
end
puts ans.max
