xa, ya = gets.split.map(&:to_i)
xb, yb = gets.split.map(&:to_i)
xc, yc = gets.split.map(&:to_i)

ab = (xb - xa)**2 + (yb - ya)**2
bc = (xc - xb)**2 + (yc - yb)**2
ca = (xa - xc)**2 + (ya - yc)**2

sides = [ab, bc, ca].sort
if sides[0] + sides[1] == sides[2]
  puts 'Yes'
else
  puts 'No'
end
