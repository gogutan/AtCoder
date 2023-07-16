n = gets.to_i
max_of_7 = n / 7
max_of_4 = n / 4
(max_of_7).downto(0) do |num7|
  (max_of_4).downto(0) do |num4|
    if n == 7 * num7 + 4 * num4
      puts "Yes"
      exit
    end
  end
end
puts "No"
