n = gets.to_i
words = []
n.times { words << gets.chomp }
memo = Hash.new(false)
previous = words.first[0]
words.each_with_index do |word, i|
  if memo[word] || previous[-1] != word[0]
    puts i.odd? ? "WIN" : "LOSE"
    exit
  else
    previous = word
    memo[word] = true
  end
end
puts "DRAW"
