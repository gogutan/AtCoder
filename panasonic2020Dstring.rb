N = gets.to_i
$str_memo = %w(a b c d e f g h i j k)
def rec(array, biggest)
  size = array.size
  if size == N
    puts array.join("")
    return
  end
  (size + 1).times do |i|
    # break if !array.empty? && array.last.ord < i + 96
    # next if i != 0 && array.last.ord > i + 98
    break if biggest < i - 1
    tmp_biggest = [biggest, i].max
    rec(array + [$str_memo[i]], tmp_biggest)
  end
end
rec([], -1)
