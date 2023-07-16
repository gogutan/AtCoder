$s = gets.chomp.split("").map(&:to_i)
array = [$s.shift]
$answers = []
def dfs(array, digit)
  if digit == $s.size + 1
    $answers << array
    return
  end
  dfs([*array, $s[digit - 1]], digit + 1)
  dfs([*array[0..-2], array[-1] * 10 + $s[digit - 1]], digit + 1)
end
dfs(array, 1)
puts $answers.flatten.inject(:+)
