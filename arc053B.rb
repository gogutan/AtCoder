s = gets.chomp.split("")
hash = Hash.new(0)
s.each do |c|
  hash[c] += 1
end
odds = hash.values.count { |n| n.odd? }
rest = s.size - odds
if odds > 0
  puts rest / (odds * 2) * 2 + 1
else
  puts rest
end
