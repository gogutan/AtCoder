n = gets.to_i
strings = []
n.times do
  strings << [gets.to_i, gets.chomp]
end

strings.each do |length, string|
  ans = false
  (1..length).each do |i|
    former = string[0, i]
    latter = string[i, length - i]
    if former < latter
      ans = true
      break
    end
  end
  puts ans ? 'Yes' : 'No'
end
