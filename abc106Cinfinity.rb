ss = gets.chomp.split("").map(&:to_i)
k = gets.chomp.to_i
count = 0
ss.each do |s|
  if s == 1
    count += 1
  else
    break
  end
end

if count >= k
  puts 1
else
  ss.delete(1)
  puts ss[0]
end