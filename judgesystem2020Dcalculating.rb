n, q = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
queries = gets.split.map(&:to_i)
$cumulative_gcds = []
previous = nums.first
nums.each do |num|
  previous = previous.gcd(num)
  $cumulative_gcds << previous
end

def gcd_one?(num, index)
  num.gcd($cumulative_gcds[index]) == 1
end

queries.each do |q|
  if index = (0...n).bsearch { |i| gcd_one?(q, i) }
    puts index + 1
  else
    puts q.gcd($cumulative_gcds.last)
  end
end
