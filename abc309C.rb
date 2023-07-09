n, k = gets.split.map(&:to_i)
medicines = n.times.map { gets.split.map(&:to_i) }.sort_by{ |a, _| a }
medicines.unshift([0, 0])
max = medicines.map{ |_, b| b }.sum
medicines.each do |a, b|
  max -= b
  if max <= k
    puts a + 1
    exit
  end
end
