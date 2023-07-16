n, m = gets.split.map(&:to_i)
sushis = gets.split.map(&:to_i)
children = Array.new(n, 0)
ans = []
sushis.each do |sushi|
  if index = children.bsearch_index { |child| child < sushi }
    ans << index + 1
    children[index] = sushi
  else
    ans << -1
  end
end
puts ans
