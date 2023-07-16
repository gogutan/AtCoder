# 繰り返し二乗法(MODを取る)
def modpow(base, exp, mod = 10 ** 9 + 7)
  if exp == 0
    1
  elsif exp.even?
    modpow(base, exp / 2, mod) ** 2 % mod
  else
    modpow(base, exp / 2, mod) ** 2 * base % mod
  end
end

MOD = 10 ** 9 + 7
n, k = gets.split.map(&:to_i)
count_memo = Array.new(n + 1, 0)
ans = 0
k.downto(1) do |num|
  # num の倍数の数
  multiple = k / num
  # gcd が num の倍数である個数
  count = modpow(multiple, n)
  # num の 2 倍、3 倍…………の gcd の count を全て引く
  2.upto(multiple) { |i| count -= count_memo[num * i] }
  count_memo[num] = count
  ans += num * count
  ans %= MOD
end
puts ans % MOD
