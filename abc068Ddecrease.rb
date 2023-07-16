NUM = 50
k = gets.to_i
div, mod = k.divmod(NUM)
base = NUM - 1
small_num = base + div - mod
large_num = base + div + NUM - (mod - 1)
ans = []
(NUM - mod).times { ans << small_num }
mod.times { ans << large_num }
puts NUM
puts ans.join(" ")
