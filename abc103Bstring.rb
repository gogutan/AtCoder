s = gets.chomp.to_s
t = gets.chomp.to_s

def rotate_string (s)
  s[-1] + s[0..-2]
end

ans = "No"

s.length.times do |index|
  s = rotate_string(s)
  if t == s
    ans = "Yes"
    break
  end
end

puts ans