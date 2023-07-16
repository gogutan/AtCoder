s = gets.chomp.split("").uniq
alphabets = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
ans = "None"
alphabets.each do |alphabet|
  unless s.include?(alphabet)
    ans = alphabet
    break
  end
end
puts ans
