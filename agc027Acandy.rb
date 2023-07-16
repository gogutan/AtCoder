n, x = gets.split(" ").map(&:to_i)
children = gets.split(" ").map(&:to_i)
children.sort!

count = 0

while x >= children.first && children.length > 1
  x -= children.first
  children.delete_at(0)
  count += 1
end

if children.first == x
  count += 1
end

puts count