n, t, a = gets.split.map(&:to_i)
if [t, a].min + (n - t - a) < [t, a].max
  puts 'Yes'
else
  puts 'No'
end
