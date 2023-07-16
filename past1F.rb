s = gets.chomp
tmp = ""
array = []
cap_count = 0
s.each_char do |c|
  tmp << c
  cap_count += 1 if c =~ /[A-Z]/
  if cap_count == 2
    array << tmp
    tmp = ""
    cap_count = 0
  end
end
puts array.sort { |a, b| a.casecmp(b) }.join
