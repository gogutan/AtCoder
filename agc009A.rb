n = gets.to_i
buttons = []
n.times do
  buttons << gets.split.map(&:to_i)
end

buttons.reverse!

pressed_num = 0
buttons.each do |score, num|
  pressing_num = (0..INF).bsearch do |i|
                   current_score = score + pressed_num
                 end

puts pressed_num
