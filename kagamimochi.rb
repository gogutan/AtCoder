N = gets.to_i
mochis = []
N.times do
  mochis.push(gets.to_i)
end
mochis.sort!
count = 0
last_mochi = 0
mochis.each do |mochi|
  if mochi != last_mochi
    count += 1
  end
  last_mochi = mochi
end
puts count