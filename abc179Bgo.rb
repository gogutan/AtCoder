n = gets.to_i
dices = []
n.times do
  dices << gets.split.map(&:to_i)
end
max_zoro_count = 0
current_zoro_count = 0
dices.each do |a, b|
  if a == b
    current_zoro_count += 1
  else
    current_zoro_count = 0
  end
  max_zoro_count = [max_zoro_count, current_zoro_count].max
end
if max_zoro_count >= 3
  puts "Yes"
else
  puts "No"
end
