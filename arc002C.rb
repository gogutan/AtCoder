n = gets.to_i
command = gets.chomp
shortcuts = ["A", "B", "X", "Y"].repeated_permutation(2).to_a
ans = []
shortcuts.combination(2).each do |l, r|
  copy = command.dup
  copy.gsub!(/#{l.join}/, "C")
  copy.gsub!(/#{r.join}/, "C")
  ans << copy.size
end
puts ans.min
