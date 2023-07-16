l, h = gets.split.map(&:to_i)
n = gets.to_i
exercises = []
n.times { exercises << gets.to_i }
exercises.each do |exercise|
  if exercise < l
    puts l - exercise
  elsif exercise <= h
    puts 0
  else
    puts -1
  end
end
