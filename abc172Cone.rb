n = gets.to_i
alphabets = ('a'..'z').to_a
array = [n]
while array.last > 26
  div, mod = (array.last).divmod(26)
  if mod == 0
    array[-1] = 26
    array << div - 1
  else
    array[-1] = mod
    array << div
  end
end
puts array.reverse.map { |i| alphabets[i - 1] }.join
