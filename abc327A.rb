n = gets.to_i
s = gets.chomp
s.chars.each_cons(2) do |chars|
  if chars.sort == %w[a b]
    puts 'Yes'
    exit
  end
end
puts 'No'
