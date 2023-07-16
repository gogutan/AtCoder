sa = gets.chomp.split("")
sb = gets.chomp.split("")
sc = gets.chomp.split("")
queue = ["a"]
last_player = ""
until queue.empty?
  last_player = queue.shift
  case last_player
  when "a"
    queue.push(sa.shift) unless sa.empty?
  when "b"
    queue.push(sb.shift) unless sb.empty?
  when "c"
    queue.push(sc.shift) unless sc.empty?
  end
end
puts last_player.upcase
