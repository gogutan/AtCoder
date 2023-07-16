n, l = gets.split.map(&:to_i)
ropes = gets.split.map(&:to_i)
last = nil
ropes.each_cons(2).with_index do |(a, b), i|
  if a + b >= l
    last = i + 1
    break
  end
end
if last
  puts "Possible"
  former = (1...last).to_a
  latter = (last + 1...n).to_a
  former.each { |n| puts n }
  latter.reverse.each { |n| puts n }
  puts last
else
  puts "Impossible"
end
