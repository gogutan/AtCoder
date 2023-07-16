n = gets.to_i
nums = gets.split.map(&:to_i)
plus_nums = nums.select { |num| num >= 0 }.sort
minus_nums = nums.select { |num| num < 0 }.sort.reverse
changes = []

if plus_nums.empty?
  a = minus_nums.shift
  b = minus_nums.shift
  plus_nums << (b.abs - a.abs)
  changes << [a, b]
elsif minus_nums.empty?
  a = plus_nums.shift
  b = plus_nums.shift
  minus_nums << b - a
  changes << [a, b]
end

until plus_nums.empty? || minus_nums.empty?
  a = plus_nums.shift
  b = minus_nums.shift
  if plus_nums.empty?
    changes << [a, b]
    plus_nums << (a.abs + b.abs)
  else
    changes << [b, a]
    minus_nums << -(a.abs + b.abs)
  end
end

puts plus_nums.first || minus_nums.first
changes.each { |a, b| puts "#{a} #{b}"}
