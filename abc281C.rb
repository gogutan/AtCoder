n, t = gets.split.map(&:to_i)
songs = gets.split.map(&:to_i)
sum = songs.sum
rest = t % sum

songs.each_with_index do |song, index|
  if rest >= song
    rest -= song
  else
    puts "#{index + 1} #{rest}"
    break
  end
end
