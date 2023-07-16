x = gets.to_i
ex = []
1.upto(32) do |num1|
  2.upto(10) do |num2|
    ex << num1 ** num2
  end
end
ex.sort!.reverse!
puts ex.bsearch { |item| item <= x }