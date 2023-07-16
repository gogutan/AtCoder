N, X = gets.chomp.split(" ").map(&:to_i)

$lengths = [1]
$pats = [1]

(1..N).each do |i|
  $lengths[i] = $lengths[i - 1] * 2 + 3
  $pats[i] = $pats[i - 1] * 2 + 1
end

# レベル n バーガーの、下から x 枚のうちパティの枚数を返す
def rec(n, x)
  return 1 if n == 0
  sum = 0
  x -= 1
  if x > 0
    if x >= $lengths[n - 1]
      sum += $pats[n - 1]
      x -= $lengths[n - 1]
    else
      sum += rec(n - 1, x)
      return sum
    end
  end
  if x > 0
    sum += 1
    x -= 1
  end
  if x > 0
    if x >= $lengths[n - 1]
      sum += $pats[n - 1]
      x -= $lengths[n - 1]
    else
      sum += rec(n - 1, x)
      return sum
    end
  end
  sum
end

puts rec(N, X)
