s = gets.chomp.split("")
k = gets.to_i

if s.all? { |a| a == s.first }
  length = s.length * k
  puts length / 2
  exit
end

s_2 = s * 1
s_3 = s * 2

previous = "A"
s_2_count = 0
s_2.each do |s2|
  if s2 == previous
    s_2_count += 1
    previous = "A"
  else
    previous = s2
  end
end

previous = "A"
s_3_count = 0
s_3.each do |s3|
  if s3 == previous
    s_3_count += 1
    previous = "A"
  else
    previous = s3
  end
end

gap = s_3_count - s_2_count

puts s_2_count + gap * (k - 1)
