h, w, k = gets.split.map(&:to_i)
cakes = Array.new
h.times do
  cakes << gets.chomp.split("")
end
strawberries = cakes.map { |cake| cake.count("#") }
cut_cakes = Array.new(h) { Array.new(w) }
current_num = 0
strawberries.each_with_index do |strawberry ,index|
  if strawberry > 0
    current_num += 1
    next_change = false
    current_s = 0
    cakes[index].each_with_index do |piece, index2|
      if next_change
        current_num += 1
      end
      cut_cakes[index][index2] = current_num
      if piece == "#" && current_s < strawberry - 1
        next_change = true
        current_s += 1
      else
        next_change = false
      end
    end
  end
end

first_nonzero = strawberries.find_index { |i| i > 0 }
(first_nonzero + 1).upto(h - 1) do |index|
  if strawberries[index] == 0
    cut_cakes[index] = cut_cakes[index - 1]
  end
end

(first_nonzero - 1).downto(0) do |index|
  if strawberries[index] == 0
    cut_cakes[index] = cut_cakes[index + 1]
  end
end

cut_cakes.each do |cut_cake|
  puts cut_cake.join(" ")
end
