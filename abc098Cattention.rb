n = gets.to_i
people = gets.chomp.chars

must_face_W = people[1..people.length - 1].select {|direction| direction == "E"}.length
must_face_E = 0
min = must_face_W

people[1..people.length - 1].each_with_index do |person, index|
  if person == "E"
    must_face_W -= 1
  end
  if people[index] == "W"
    must_face_E += 1
  end
  sum = must_face_W + must_face_E
  if sum < min
    min = sum
  end
end
puts min

# n = gets.to_i
# people = gets.chomp.chars
# min = 300000
# people.each_with_index do |person, index|
#   if index != 0
#     must_face_E = people[0..index - 1].select {|direction| direction == "W"}.length
#   else
#     must_face_E = 0
#   end
#   if index != people.length - 1
#     must_face_W = people[index + 1..people.length - 1].select {|direction| direction == "E"}.length
#   else
#     must_face_W = 0
#   end
#   sum = must_face_E + must_face_W
#   if sum < min
#     min = sum
#   end
# end
# puts min