n, k = gets.split.map(&:to_i)
s = gets.chomp.chars
char_swapped = s.map { |char| [char, false] }
(0...n - 1).each do |a|
  swap_a = char_swapped[a]
  provisional_swap = swap_a
  provisional_cost = 0
  (a + 1...n).each do |b|
    swap_b = char_swapped[b]
    cost = 0
    cost += 1 unless swap_a[1]
    cost += 1 unless swap_b[1]
    # コストが増えない範囲で、出来るだけ右側と交換する
    if (provisional_swap[0] > swap_b[0] && cost <= k) || (provisional_swap[0] == swap_b[0] && cost <= provisional_cost)
      provisional_swap = swap_b
      provisional_cost = cost
    end
  end
  swap_a[0], provisional_swap[0] = provisional_swap[0], swap_a[0]
  swap_a[1] = true
  provisional_swap[1] = true
  k -= provisional_cost
end
puts char_swapped.map { |e| e[0] }.join

# n, k = gets.split.map(&:to_i)
# chars = gets.chomp.split("")
# # 入れ替えに必要なコスト。初期値は1、入れ替えたら0とする
# neccesary_costs = Array.new(n, 1)
# changed_count = 0
# finished = -1
# while finished < n - 2
#   # 交換元を pos_a とする
#   pos_a = finished + 1
#   pos_a_ord = chars[pos_a].ord
#   # 交換先を pos_b とする（交換しない場合は -1 ）
#   pos_b = -1
#   pos_b_ord = pos_a_ord
#   # pos_a より後ろの文字を順に確認する
#   (pos_a + 1...n).each do |index|
#     if (changed_count + neccesary_costs[pos_a] + neccesary_costs[index]) > k
#       next
#     else
#       # 暫定的な pos_b より若い char の場合は pos_b に格納する
#       if pos_b_ord > chars[index].ord
#         pos_b = index
#         pos_b_ord = chars[index].ord
#       # 同じ char の場合は、そもそも交換しなくてもいい場合と、pos_b の必要コストが 0 である場合を除いて、pos_b に格納する
#       # （文字列の左側には若い文字を残した方が良いため、できるだけ右側と交換する）
#       elsif pos_b_ord == chars[index].ord
#         next if pos_b == -1 || neccesary_costs[pos_b] == 0
#         pos_b = index
#       end
#     end
#   end
#   unless pos_b == -1
#     chars[pos_a], chars[pos_b] = chars[pos_b], chars[pos_a]
#     changed_count += 1 if neccesary_costs[pos_a] == 1
#     neccesary_costs[pos_a] = 0
#     changed_count += 1 if neccesary_costs[pos_b] == 1
#     neccesary_costs[pos_b] = 0
#   end
#   finished = pos_a
# end
# puts chars.join
