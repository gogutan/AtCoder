n = gets.to_i
mountain = []
n.times { mountain << gets.chomp.chars }
(n - 2).downto(0) do |i|
  1.upto(2 * n - 3) do |j|
    if mountain[i][j] == "#" && (mountain[i + 1][j - 1] == "X" || mountain[i + 1][j] == "X" || mountain[i + 1][j + 1] == "X")
      mountain[i][j] = "X"
    end
  end
end
mountain.each { |m| puts m.join }
