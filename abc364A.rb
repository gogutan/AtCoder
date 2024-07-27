n = gets.to_i
string = ''
n.times do
  string += gets.chomp
end
puts string.include?('sweetsweets') ? 'No' : 'Yes'
