w, h = gets.chomp.split(" ").map(&:to_i)
if w * 3 == h * 4
  puts "4:3"
else
  puts "16:9"
end