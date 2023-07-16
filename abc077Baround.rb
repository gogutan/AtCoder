n = gets.to_i
n.downto(1) do |num|
  if Math.sqrt(num).to_i == Math.sqrt(num)
    puts num
    break
  end
end
