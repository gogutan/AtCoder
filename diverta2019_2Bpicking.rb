class Array
  # nums must be sorted
  def delete_ats(nums)
    # nums.each_with_index { |num, i| self.delete_at(num - i) }
    tmp = []
    current = 0
    self.each_with_index do |a, i|
      if nums[current] == i
        tmp << a
        current += 1
      else
    end
    tmp
  end
end

n = gets.to_i
balls = []
n.times { balls << gets.split.map(&:to_i) }
inclination_memo = Hash.new(0)

balls.each_with_index do |(x, y), i|
  balls.each_with_index do |(x2, y2), i2|
    next if i == i2
    inclination_memo[[x2 - x, y2 - y]] += 1
  end
end

puts n - (inclination_memo.values.max || 0)
