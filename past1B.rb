n = gets.to_i
sales = []
n.times { sales << gets.to_i }
tmp = sales.shift
sales.each do |sale|
  fluctuation = sale - tmp
  if fluctuation > 0
    puts "up #{fluctuation}"
  elsif fluctuation < 0
    puts "down #{-fluctuation}"
  else
    puts "stay"
  end
  tmp = sale
end
