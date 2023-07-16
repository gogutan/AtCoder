t = gets.to_i
nums = []
t.times do
  tmp = gets.chomp.split("").map(&:to_i)
  nums << tmp
end

nums.each_with_index do |num, problem|
  num << 0
  addition = Array.new(num.size, "")
  previous = 0
  num.each_with_index do |n, i|
    if n > previous
      (n - previous).times { addition[i] += "(" }
    elsif n < previous
      (previous - n).times { addition[i] += ")" }
    end
    previous = n
  end
  ans = []
  num.size.times do |i|
    ans << addition[i]
    ans << num[i]
  end
  ans.pop
  puts "Case ##{problem + 1}: #{ans.join}"
end
