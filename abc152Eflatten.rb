MOD = 10 ** 9 + 7
n = gets.to_i
nums = gets.split.map(&:to_i)
lcm = nums.inject(&:lcm)
puts nums.inject(0) { |res, num| res + lcm / num } % MOD
