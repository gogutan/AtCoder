str = gets.chomp.to_s
count = 0
str.length.times do |num|
  if num %2 == 0
    if str[num] == "0"
      str[num] = "1"
      count += 1
    end
  elsif num %2 == 1
    if str[num] == "1"
      str[num] = "0"
      count += 1
    end
  end
end
puts [count, str.length - count].min