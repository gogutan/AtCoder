n, m = gets.split.map(&:to_i)
nums = []
n.times { nums << gets.split.map(&:to_i) }
ans = []
2.times do |first|
  2.times do |second|
    2.times do |third|
      nums_dup = Marshal.load(Marshal.dump(nums))
      n.times do |i|
        nums_dup[i][0] *= - 1 if first == 0
        nums_dup[i][1] *= - 1 if second == 0
        nums_dup[i][2] *= - 1 if third == 0
      end
      sums = nums_dup.map { |array| array.inject(:+) }.sort.reverse
      ans << sums.select.with_index { |sum, index| index < m }.inject(0) { |res, num| res + num }
    end
  end
end
puts ans.max
