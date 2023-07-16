nums = [3, 2, 6, 5]
rest = 14

# memo[いくつ目のnumまで調べたか][indexの数値を作れたか]
memo = Array.new(nums.size + 1) { Array.new(rest + 1) {false} }
memo[0][0] = true

puts '実行前'
memo.each { |row| p row.map { |bool| bool ? '⭕️' : '❎'} }
puts

nums.each_with_index do |num, index|
  memo[index].each_with_index do |bool, sum|
    next unless bool

    # num を足さない場合
    memo[index + 1][sum] = true
    # num を足す場合
    memo[index + 1][sum + num] = true if (sum + num) <= rest
  end
end

puts '実行後'
memo.each { |row| p row.map { |bool| bool ? '⭕️' : '❎'} }
puts

puts memo.last.last
