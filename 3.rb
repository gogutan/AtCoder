n = gets.to_i
a = gets.split.map(&:to_i)

array = []

(2 ** (n - 1)).times do |num|
  array << [a[0]]
  size = 1
  (n - 1).times do |i|
    if num[i] == 1
      array.last << a[i + 1]
      size += 1
    else
      array.last[size - 1] = array.last.last | a[i + 1]
    end
  end
end

puts array.map { |combi|
  combi.inject { |result, num| result ^ num }
}.min
