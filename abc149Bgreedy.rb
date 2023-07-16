a, b, k = gets.split.map(&:to_i)
a_deduction = [a, k].min
b_deduction = [b, k - a_deduction].min
a -= a_deduction
b -= b_deduction
puts "#{a} #{b}"
