n = gets.to_i
as = gets.split.map(&:to_i)

cuts = Array.new(360, false)
cuts[0] = true
current_pos = 0

as.each do |a|
  current_pos += a
  current_pos %= 360
  cuts[current_pos] = true
end

double_cuts = cuts + cuts

ans = 0
current_deg = 1

double_cuts.each do |cut|
  ans = current_deg if ans < current_deg
  if cut
    current_deg = 1
  else
    current_deg += 1
  end
end

puts ans
