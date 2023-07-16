n = gets.to_i
strings = gets.chomp.split("")
alphabets = %W(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
ans = []
strings.each do |s|
  index = alphabets.find_index(s) + n
  index -= 26 if index >= 26
  ans << alphabets[index]
end
puts ans.join
