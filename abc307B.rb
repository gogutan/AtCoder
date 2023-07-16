n = gets.to_i
strings = n.times.map { gets.chomp.to_s }
strings.permutation(2).each do |a, b|
  new_string = a + b
  half_size = new_string.size / 2
  former = new_string.slice(0, half_size)
  latter = new_string.slice(-half_size, half_size)
  if former == latter.reverse
    puts "Yes"
    exit
  end
end
puts "No"
