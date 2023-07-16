x = gets.to_i
money = 100
1.upto(10000000) do |i|
  money += money / 100
  if money >= x
    puts i
    exit
  end
end
