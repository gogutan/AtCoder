m = gets.to_i
ds = gets.split.map(&:to_i)
target_date = ds.sum / 2 + 1

ds.each_with_index do |d, i|
  if target_date <= d
    puts "#{i + 1} #{target_date}"
    break
  else
    target_date -= d
  end
end
