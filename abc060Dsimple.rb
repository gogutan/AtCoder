num, weight = gets.split.map(&:to_i)
things = []
num.times { things << gets.split.map(&:to_i) }
w_range = (things.first.first..things.first.first + 3).to_a
things_1 = []
things_2 = []
things_3 = []
things_4 = []
things.each do |w, v|
  case w_range.find_index(w)
  when 0
    things_1 << v
  when 1
    things_2 << v
  when 2
    things_3 << v
  when 3
    things_4 << v
  end
end
things_1.sort! { |a, b| b <=> a }
things_2.sort! { |a, b| b <=> a }
things_3.sort! { |a, b| b <=> a }
things_4.sort! { |a, b| b <=> a }
cumulative_things_1 = [0]
cumulative_things_2 = [0]
cumulative_things_3 = [0]
cumulative_things_4 = [0]
things_1.each { |v| cumulative_things_1 << cumulative_things_1.last + v }
things_2.each { |v| cumulative_things_2 << cumulative_things_2.last + v }
things_3.each { |v| cumulative_things_3 << cumulative_things_3.last + v }
things_4.each { |v| cumulative_things_4 << cumulative_things_4.last + v }
ans = []
cumulative_things_1.each_with_index do |v1, i1|
  cumulative_things_2.each_with_index do |v2, i2|
    cumulative_things_3.each_with_index do |v3, i3|
      cumulative_things_4.each_with_index do |v4, i4|
        ans << v1 + v2 + v3 + v4 if i1 * w_range[0] + i2 * w_range[1] + i3 * w_range[2] + i4 * w_range[3] <= weight
      end
    end
  end
end
puts ans.max
