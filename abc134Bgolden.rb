n, d = gets.chomp.split(" ").map(&:to_i)
1.upto(20) do |num|
  if num * (2 * d + 1) >= n
    puts num
    exit
  end
end