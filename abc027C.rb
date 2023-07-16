n = gets.to_i
win = false
until n <= 1
  if win && n.even?
    n = n / 2 - 1
  else
    n = n / 2
  end
  win = !win
end
win = !win if n < 1
puts win ? "Takahashi" : "Aoki"
