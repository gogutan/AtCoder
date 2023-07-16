n, x = gets.split(" ").map(&:to_i)
prices = gets.chomp.split(" ").map(&:to_i)

string_2digit = x.to_s(2).rjust(n, "0")

sum = 0

prices.reverse!

prices.each_with_index do |price, index|
  if string_2digit[index] == "1"
    sum += price
  end
end

puts sum