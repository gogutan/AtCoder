n, l, r = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.each do |ai|
  if ai < l
    puts l
  elsif ai > r
    puts r
  else
    puts ai
  end
end