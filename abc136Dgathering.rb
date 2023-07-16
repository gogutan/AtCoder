s = gets.chomp
rls = s.scan(/R+L+/)
ans = []
rls.each do |rl|
  r_size = rl.index("L")
  l_size = rl.size - r_size
  r_children = l_size / 2 + (r_size / 2.0).ceil
  l_children = r_size / 2 + (l_size / 2.0).ceil
  (r_size - 1).times { ans << 0 }
  ans << r_children
  ans << l_children
  (l_size - 1).times { ans << 0 }
end
puts ans.join(" ")
