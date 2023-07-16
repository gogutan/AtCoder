x, t = gets.chomp.split(" ").map(&:to_i)
routes = []
x.times do
  routes << gets.chomp.split(" ").map(&:to_i)
end
routes.sort! {|a, b| a[0] <=> b[0]}
ans = "TLE"
routes.each do |route|
  if route[1] <= t
    ans = route[0]
    break
  end
end
puts ans
