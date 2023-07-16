t = gets.to_i
nums = []
t.times { nums << gets.chomp.chars }
nums.each.with_index(1) do |num, i|
  num_2 = []
  num.each_with_index do |d, i_2|
    if d == "4"
      num[i_2] = "3"
      num_2 << 1
    else
      num_2 << 0
    end
  end
  puts "Case ##{i}: #{num.join} #{num_2.join.to_i}"
end
