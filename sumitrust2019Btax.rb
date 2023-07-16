n = gets.to_i
1.upto(50000) do |index|
  if n == (index * 1.08).floor
    puts index
    exit
  end
end
puts ":("
