s = gets.chomp
alphabets = ("a".."z").to_a + ["."]
ans = 0
(1..3).each do |i|
  alphabets.repeated_permutation(i) do |c|
    ans += 1 if s.match?(/#{c.join}/)
  end
end
puts ans
