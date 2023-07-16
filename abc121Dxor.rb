a, b = gets.split.map(&:to_i)

def xor_sum(num, digit)
  return (num + 1) / 2 % 2 if digit == 1
  loop_num = 2 ** digit
  rest = (num + 1) % loop_num
  count = rest - loop_num / 2
  if count < 0 || count.even?
    0
  else
    1
  end
end

array = []

b.to_s(2).size.downto(1) do |digit|
  sum = xor_sum(b, digit) - xor_sum(a - 1, digit)
  if sum.even?
    array << 0
  else
    array << 1
  end
end

puts array.join.to_i(2)
