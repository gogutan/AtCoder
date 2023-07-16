b = gets.chomp.to_s
array = [["A", "T"], ["T", "A"], ["C", "G"], ["G", "C"]]
detected_array = array.detect {|n| n[0] == b}
puts detected_array[1]