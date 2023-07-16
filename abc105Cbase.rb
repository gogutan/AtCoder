n = gets.to_i
answer = ""
1.upto(1000000000).with_index do |num, index|
  break if n == 0
  if n % (2 ** num) != 0
    answer.insert(0, "1")
    n -= index.even? ? 2 ** index : (2 ** index) * -1
  else
    answer.insert(0, "0")
  end
end
answer.insert(0, "0") if answer.length == 0
puts answer