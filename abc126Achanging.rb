n, k = gets.split(" ").map(&:to_i)
strings = gets.split("").map(&:to_s)

strings[k - 1] = strings[k - 1].swapcase

s = ""

strings.each do |string|
  s << string
end

puts s