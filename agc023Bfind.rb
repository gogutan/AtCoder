n = gets.to_i
strings = []
n.times { strings << gets.chomp.split("").map(&:ord) }
count = 0
n.times do
  count += 1 if strings == strings.transpose
  strings.each { |string| string.rotate! }
end
puts count * n
