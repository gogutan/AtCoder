h, w = gets.split.map(&:to_i)
array = []
h.times { array << gets.chomp }
array.each do |str|
  2.times { puts str }
end
