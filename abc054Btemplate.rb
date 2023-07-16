n, m = gets.split.map(&:to_i)
image_1 = []
n.times { image_1 << gets.chomp.split("") }
image_2 = []
m.times { image_2 << gets.chomp.split("") }
new_images = []

(0..n - m).each do |w|
  (0..n - m).each do |h|
    new_image = []
    image_1[w, m].each do |row|
      new_image << row[h, m]
    end
    new_images << new_image
  end
end

puts new_images.include?(image_2) ? "Yes" : "No"
