s = gets.chomp
dist_to_fa = { 5 => "Do", 3 => "Re", 1 => "Mi", 0 => "Fa", 10 => "So", 8 => "La", 6 => "Si" }

fa_index = 0
0.upto(20) do |start|
  if s[start..start + 6] == "WBWBWBW"
    fa_index = start
    break
  end
end

puts dist_to_fa[fa_index]
