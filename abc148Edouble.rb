n = gets.to_i
array = [50]
until array.last > 10 ** 18
  array << array.last * 5
end

if n.even?
  ans = n / 10
  array.each do |num|
    ans += n / num
  end
  puts ans
else
  puts 0
end
