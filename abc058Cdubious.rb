n = gets.to_i
ans_hash = Hash.new(50)
n.times do
  tmp_hash = Hash.new(0)
  str = gets.chomp
  str.chars { |char| tmp_hash[char] += 1 }
  ("a".."z").each do |alphabet|
    ans_hash[alphabet] = [ans_hash[alphabet], tmp_hash[alphabet]].min
  end
end
ans_ary = []
ans_hash.each do |key, value|
  value.times { ans_ary << key }
end
puts ans_ary.join
