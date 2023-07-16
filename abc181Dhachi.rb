s = gets.chomp
s_size = s.size
hash = Hash.new(0)
s.each_char do |c|
  hash[c.to_i] += 1
end
(0..999).each do |i|
  if s.size > 1 && i < 10
    next
  end
  if s.size > 2 && i < 100
    next
  end
  if i % 8 == 0
    memo = Hash.new(0)
    i.to_s.each_char do |c|
      memo[c.to_i] += 1
    end
    flag = true
    memo.each do |k, v|
      flag = false if hash[k] < v
    end
    if flag
      puts "Yes"
      exit
    end
  end
end
puts "No"
