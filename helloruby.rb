# 整数の入力
a, b = gets.chomp.split(" ").map(&:to_i);
 
# 偶数か奇数の判定
if a % 2 == 1 && b % 2 == 1
  print "Odd\n"
else
  print "Even\n"
end