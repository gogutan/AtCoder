n = gets.to_i
strings = []
n.times do
  strings << gets.chomp.split("").sort.join
end
strings.sort!
successive_nums = []
previous = ""
successive = 1
strings.each do |string|
  if string == previous
    successive += 1
  else
    previous = string
    if successive > 1
      successive_nums << successive
    end
    successive = 1
  end
end
if successive > 1
  successive_nums << successive
end

combinations = [0, 0]
2.upto(100001) do |index|
  combinations[index] = index * (index - 1) / 2
end

sum = 0
successive_nums.each do |successive_num|
  sum += combinations[successive_num]
end
puts sum
