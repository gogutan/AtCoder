n, m = gets.split(" ").map(&:to_i)
s = gets.chomp.to_s
t = gets.chomp.to_s

lcm = s.size.lcm(t.size)

x = []
# y = []

# lcm.times do
#   x.push("")
# end

lcm_s = lcm / s.size
lcm_t = lcm / t.size

lcm_st = lcm_s.lcm(lcm_t)

(lcm_st / lcm_t).times do |num|
  x.push(s[0 + lcm_st / lcm_s * num])
end

(lcm_st / lcm_s).times do |num|
  if x[num] != t[0 + lcm_st / lcm_t * num]
    puts "-1"
    exit
  end
end

puts lcm

# lcm_s = lcm / s.size

# s.size.times do |num|
#   x[(1 + lcm_s * num)] = s[num]
# end

# lcm_t = lcm / t.size

# t.size.times do |num|
#   if x[(1 + lcm_t * num)] != "" && x[(1 + lcm_t * num)] != t[num]
#     puts "-1"
#     exit
#   end
# end

# puts lcm
