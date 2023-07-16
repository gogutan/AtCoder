n, k = gets.split.map(&:to_i)
first_possiblity = (n - k) / n.to_f
second_possibility = 1 / n.to_f
third_possiblity = (k - 1) / n.to_f
possibility_1 = first_possiblity * second_possibility * third_possiblity * 6
possibility_2 = (1 / n.to_f) ** 2 * ((n - 1) / n.to_f) * 3
possibility_3 = (1 / n.to_f) ** 3
puts possibility_1 + possibility_2 + possibility_3