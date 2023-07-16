n, k = gets.split.map(&:to_i)
r, s, p = gets.split.map(&:to_i)
cpus = gets.chomp.split("")
takahashis = []
win_pattern = Hash.new
win_pattern["r"] = "p"
win_pattern["s"] = "r"
win_pattern["p"] = "s"
cpus.each_with_index do |cpu, i|
  if (i - k) < 0 || takahashis[i - k] != win_pattern[cpu]
    takahashis << win_pattern[cpu]
  else
    takahashis << ""
  end
end
ans = takahashis.count("r") * r + takahashis.count("s") * s + takahashis.count("p") * p
puts ans
