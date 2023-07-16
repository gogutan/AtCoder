strings = gets.chomp.chars

count_now = 0
count_max = 0

strings.each_with_index do |string, index|
  if string == "A" || string == "C" || string == "G" || string == "T"
    count_now += 1
    if count_now > count_max
      count_max = count_now
    end
  else
    count_now = 0
  end
end

puts count_max