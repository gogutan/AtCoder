n = gets.to_i
happineses = []
(n - 1).times { happineses << gets.split.map(&:to_i) }
emps = n.times.to_a
sums = []
(0..n).each do |first|
  (0..n).each do |second|
    (0..n).each do |third|
      next unless first + second + third == n
      emps.combination(first).each do |group_1|
        copy_1 = Marshal.load(Marshal.dump(emps))
        copy_1.delete_if { |e| group_1.include?(e) }
        copy_1.combination(second).each do |group_2|
          copy_2 = Marshal.load(Marshal.dump(copy_1))
          copy_2.delete_if { |e| group_2.include?(e) }
          sum = 0
          # group_1 の集計
          group_1.combination(2).each do |a, b|
            sum += happineses[a][b - a - 1]
          end
          # group_2 の集計
          group_2.combination(2).each do |a, b|
            sum += happineses[a][b - a - 1]
          end
          # copy_2 の集計
          copy_2.combination(2).each do |a, b|
            sum += happineses[a][b - a - 1]
          end
          sums << sum
        end
      end
    end
  end
end
puts sums.max
