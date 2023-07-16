n, m = gets.split.map(&:to_i)
array = []
m.times { array << gets.split.map(&:to_i) }

max = 0
if n == 1
  array_n = (0..9).to_a
elsif n == 2
  array_n = (10..99).to_a
else
  array_n = (100..999).to_a
end

ans = []
array_n.each do |num|
  num_s = num.to_s
  flag = true
  array.each do |digit, n|
    if num_s[digit - 1].to_i != n
      flag = false
    end
  end
  ans << num if flag
end

puts ans.empty? ? -1 : ans.min
