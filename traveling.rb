n = gets.to_i
spots = []
n.times do
  spots.push(gets.chomp.split(" ").map(&:to_i))
end
atcodeer = [0, 0, 0]
x_move = 0
y_move = 0
t_move = 0
t_left = 0
judge = true
spots.each do |elm|
  x_move = (elm[1] - atcodeer[1] ).abs
  y_move = (elm[2] - atcodeer[2] ).abs
  t_move = x_move + y_move
  t_left = elm[0] - atcodeer[0]
  if t_left >= t_move && (t_left - t_move).even?
    atcodeer = elm
  else
    judge = false
    puts "No"
    break
   end
end
if judge == true
  puts "Yes"
end