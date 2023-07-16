x, n = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
if n == 0
  puts x
  exit
else
  0.upto(200) do |i|
    if !nums.include?(x - i)
      puts x - i
      exit
    elsif !nums.include?(x + i)
      puts x + i
      exit
    end
  end
end
