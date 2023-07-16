a, b, k = gets.chomp.split(" ").map(&:to_i)
divisor_ary = []

1.upto(100) do |num|
  if a % num == 0 && b % num == 0
    divisor_ary.push(num)
  end
end

divisor_ary.reverse!
puts divisor_ary[k - 1]

