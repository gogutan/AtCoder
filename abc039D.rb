h, w = gets.split.map(&:to_i)

image = []
image << ["#"] * (w + 2)
h.times { image << ["#"] + gets.chomp.split("") + ["#"] } 
image << ["#"] * (w + 2)

white_image = []
white_image << ["#"] * (w + 2)
h.times { white_image << ["#"] + ["."] * w + ["#"] } 
white_image << ["#"] * (w + 2)

blacks = []

(1..w).each do |c|
  (1..h).each do |r|
    if image[r - 1][c - 1] == "#" &&
       image[r - 1][c] == "#" &&
       image[r - 1][c + 1] == "#" &&
       image[r][c - 1] == "#" &&
       image[r][c] == "#" &&
       image[r][c + 1] == "#" &&
       image[r + 1][c - 1] == "#" &&
       image[r + 1][c] == "#" &&
       image[r + 1][c + 1] == "#"
      white_image[r - 1][c - 1] = "#"
      white_image[r - 1][c] = "#"
      white_image[r - 1][c + 1] = "#"
      white_image[r][c - 1] = "#"
      white_image[r][c] = "#"
      white_image[r][c + 1] = "#"
      white_image[r + 1][c - 1] = "#"
      white_image[r + 1][c] = "#"
      white_image[r + 1][c + 1] = "#"
      blacks << [r - 1, c - 1]
    end
  end
end

if image == white_image
  puts "possible"
else
  puts "impossible"
  exit
end

original_image = Array.new(h) { Array.new(w, ".") }
blacks.each do |c, r|
  original_image[c][r] = "#"
end
original_image.each { |r| puts r.join }
