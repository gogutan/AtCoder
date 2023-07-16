N = gets.chomp.split("").map(&:to_i)
$sum = 0

def dfs(digit, tight, num)
  if digit == N.length
    if num.include?(7) && num.include?(5) && num.include?(3)
      $sum += 1
    end
    return
  end

  if num.empty? && digit + 2 <= N.length
    dfs(digit + 1, false, num)
  end

  if tight == false || N[digit] >= 7
    if N[digit] >= 8
      tight = false
    end
    dfs(digit + 1, tight, num + [7])
  end

  if tight == false || N[digit] >= 5
    if N[digit] >= 6
      tight = false
    end
    dfs(digit + 1, tight, num + [5])
  end

  if tight == false || N[digit] >= 3
    if N[digit] >= 4
      tight = false
    end
    dfs(digit + 1, tight, num + [3])
  end

end

dfs(0, true, [])

puts $sum