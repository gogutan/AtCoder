n = gets.to_i
s = gets.chomp.split('')
ans = []
lefts = []

s.each do |c|
  if c == '('
    ans << c
    lefts << ans.size - 1
  elsif c == ')' && lefts.size > 0
    ans.slice!(lefts.pop..)
  else
    ans << c
  end
end

puts ans.join
