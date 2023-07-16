s = gets.chomp
t = gets.to_i
counts = {"L" => 0, "R" => 0, "U" => 0, "D" => 0, "?" => 0 }
s.chars { |char| counts[char] += 1 }
distance = (counts["L"] - counts["R"]).abs + (counts["U"] - counts["D"]).abs
if t == 1
  modified_distance = distance + counts["?"]
else
  modified_distance = distance - counts["?"]
  if modified_distance < 0
    modified_distance = modified_distance.even? ? 0 : 1
  end
end
puts modified_distance
