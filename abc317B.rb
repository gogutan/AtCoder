n = gets.to_i
nums = gets.split.map(&:to_i)
nums.sort!
nums.each_cons(2) do |a, b|
  if a + 2 == b
    puts a + 1
    break
  end
end
