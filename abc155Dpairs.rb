# solving

INF = 10 ** 100
n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i).sort
$minus_nums = []
$plus_nums = []
zero_size = 0
nums.each do |num|
  if num < 0
    $minus_nums << num
  elsif num == 0
    zero_size += 1
  else
    $plus_nums << num
  end
end
$minus_size = $minus_nums.size
$plus_size = $plus_nums.size
minus_combination = $minus_size * $plus_size
zero_combination = zero_size * (zero_size - 1) / 2 + zero_size * ($minus_size + $plus_size)
$plus_combination = $minus_size * ($minus_size - 1) / 2 + $plus_size * ($plus_size - 1) / 2

$minus_nums.sort!
$plus_nums.sort!

def minus_combination_under_n(n)
  count = 0
  $minus_nums.each do |minus|
    index = $plus_nums.bsearch_index { |plus| minus * plus <= n } || $plus_size
    count += $plus_size - index
  end
  count
end

def plus_combination_under_n(n)
  count = 0
  $minus_nums.each_with_index do |minus, index|
    index2 = $minus_nums.bsearch_index { |minus2| minus * minus2 > n } || $minus_size
    count += $minus_size - index2
    count -= 1 if index2 <= index
  end
  $plus_nums.each_with_index do |plus, index|
    index2 = $plus_nums.bsearch_index { |plus2| plus * plus2 > n } || $plus_size
    count += $plus_size - index2
    count -= 1 if index2 <= index
  end
  # puts count
  count /= 2
  $plus_combination - count
end

if k <= minus_combination
  puts (-INF...0).bsearch { |n| minus_combination_under_n(n) >= k }
elsif k <= minus_combination + zero_combination
  puts 0
else
  puts (1..INF).bsearch { |n| plus_combination_under_n(n) >= k - minus_combination - zero_combination }
end
