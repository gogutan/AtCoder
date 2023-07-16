n = gets.to_i
intervals = []
(n - 1).times do
  intervals << gets.split.map(&:to_i)
end

(n - 1).times do |start|
  time = 0
  intervals[start..n - 1].each do |interval|
    time = [time, interval[1]].max
    mod = time % interval[2]
    time += interval[2] - mod if mod != 0
    time += interval[0]
  end
  puts time
end
puts 0
