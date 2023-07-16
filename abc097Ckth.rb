s = gets.chomp.to_s
k = gets.to_i

strings_1 = []
strings_2 = []
strings_3 = []
strings_4 = []
strings_5 = []

(0...s.size).each do |index|
  strings_1 << s[index]
end
strings_1.uniq!

(1...s.size).each do |index|
  strings_2 << s[index - 1..index]
end
strings_2.uniq!

(2...s.size).each do |index|
  strings_3 << s[index - 2..index]
end
strings_3.uniq!

(3...s.size).each do |index|
  strings_4 << s[index - 3..index]
end
strings_4.uniq!

(4...s.size).each do |index|
  strings_5 << s[index - 4..index]
end
strings_5.uniq!

strings_all = strings_1 + strings_2 + strings_3 + strings_4 + strings_5
strings_all.sort!

puts strings_all[k - 1]