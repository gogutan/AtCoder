numbers = []
3.times { numbers << gets.split.map(&:to_i) }

def deduct_minimum(ary)
  ary.each_with_index do |row, index|
    min = row.min
    row.each_with_index do |num, index2|
      ary[index][index2] -= min
    end
  end
  ary
end

numbers = deduct_minimum(numbers)
numbers = deduct_minimum(numbers.transpose)

puts numbers.flatten.inject(:+) == 0 ? "Yes" : "No"
