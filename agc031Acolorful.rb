n = gets.to_i
s = gets.split("").map(&:to_s)
alphabets = "abcdefghijklmnopqrstuvwxyz"
alphabets_ary = alphabets.split("").map(&:to_s)
alphabets_counts = []
alphabets_ary.each do |alphabet|
  alphabets_counts.push(s.count(alphabet))
end
options = 1
alphabets_counts.each do |alphabets_count|
  options *= (alphabets_count + 1)
end
options -= 1
puts options % (10 ** 9 + 7)