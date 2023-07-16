n = gets.to_i
islands = gets.split.map(&:to_i)
average = islands.inject(:+) / islands.size.to_f
if average % 1 != 0
  puts -1
  exit
end

shortage = 0
bridges = 0
islands.each do |island|
  shortage += average
  shortage -= island
  if shortage != 0
    bridges += 1
  end
end

puts bridges
