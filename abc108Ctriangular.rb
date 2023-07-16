n, k = gets.chomp.split(" ").map(&:to_i)
just_numbers = n / k
half_numbers = (n / k.to_f).round
answer = just_numbers ** 3
answer += half_numbers ** 3 if k.even?
puts answer