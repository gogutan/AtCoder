n, m = gets.split.map(&:to_i)
threads = Array.new(n, true)
kakikomi = []
m.times { kakikomi << gets.to_i }
kakikomi.reverse.each do |kakiko|
  next unless threads[kakiko - 1]
  puts kakiko
  threads[kakiko - 1] = false
end
threads.each_with_index do |thread, index|
  puts index + 1 if thread
end
