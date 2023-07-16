N = 5
D = 15
# expected answer is 2

$dp = Array.new(2) {Array.new(3) {Array.new(4, -1)} }

p $dp

def rec(str, digit, tight, sum)
  if digit == str.length
    return sum == D ? 1 : 0
  end

  x = str[digit]

  r = tight ? x : 9

  $dp[digit][tight][sum] 



end
