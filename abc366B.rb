n = gets.to_i
array = n.times.map { gets.chomp.split('') }.reverse
max = array.max_by(&:length).length
array.each { |a| a[max - 1] = nil if a.length < max }
array.transpose.each do |a|
  string_appeared = false
  a.reverse!
  a.each_with_index do |s, i|
    if s.nil? && string_appeared
      a[i] = '*'
    elsif s
      string_appeared = true
    end
  end
  puts a.reverse.join
end
