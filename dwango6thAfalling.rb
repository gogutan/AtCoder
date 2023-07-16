n = gets.to_i
songs = []
times = []
n.times do
  tmp1, tmp2 = gets.split
  songs << tmp1
  times << tmp2.to_i
end
name = gets.chomp
index = songs.find_index(name)
time = times[index + 1..-1].inject(:+)
puts time ? time : 0
