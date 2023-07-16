n = gets.to_i
numbers = []
n.times { numbers << gets.to_i } 
# 使っている色の数と、それぞれの塗られている整数の最大値を格納するcolors配列
# 例えば[1, 4, 9]の場合、1まで塗られた色、4まで塗られた色、9まで塗られた色の計3色が存在する
colors = [-1]
numbers.each do |number|
  # 自身よりも小さい（ただしその中では1番大きい）番号の色を探す
  if index = colors.bsearch_index { |x| number > x }
    # 存在する場合は、自身の番号に更新する
    colors[index] = number
  else
    # 存在しない場合は、新たな色として自身の番号をcolorsに加える
    colors << number
  end
end
# 最終的な色の数を出力する
puts colors.size