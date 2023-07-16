MOD = 1000000007
n = gets.to_i
str = gets.chomp
_ = gets.chomp
# 連続する文字数に置換、正規表現で後方置換 aab → [2, 1]
nums = str.gsub(/(.)\1{0,}/) { |x| x.size }.split("").map(&:to_i)

ans = []
prev_num = 0
if nums.shift == 1
  ans << 3
  prev_num = 1
else
  ans << 6
  prev_num = 2
end

nums.each do |num|
  if prev_num == 1
    ans << 2
  elsif prev_num == 2 && num == 1
    ans << 1
  else
    ans << 3
  end
  prev_num = num
end

puts ans.inject(1) { |res, num| res * num % MOD }
