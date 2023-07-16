n = gets.to_i
strings = []
n.times do
  strings.push(gets.chomp.to_s)
end

ab_count = 0
first_b_count = 0
last_a_count = 0
double_count = 0

strings.each do |string|
  ab_count += string.scan("AB").length
  if string[0] == "B"
    first_b_count += 1
  end
  if string[string.length - 1] == "A"
    last_a_count += 1
  end
  if string[0] == "B" && string[string.length - 1] == "A"
    double_count += 1
  end
end

mixed_ab = [first_b_count, last_a_count].min

if first_b_count == last_a_count && last_a_count == double_count && double_count > 0
  mixed_ab -= 1
end

sum = ab_count + mixed_ab

puts sum