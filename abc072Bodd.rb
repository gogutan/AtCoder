s = gets.chomp.split("")
s.delete_if.with_index { |item, index| index.odd? }
puts s.join
