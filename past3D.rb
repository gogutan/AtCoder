ex_numbers = [
  ".###..#..###.###.#.#.###.###.###.###.###",
  ".#.#.##....#...#.#.#.#...#.....#.#.#.#.#",
  ".#.#..#..###.###.###.###.###...#.###.###",
  ".#.#..#..#.....#...#...#.#.#...#.#.#...#",
  ".###.###.###.###...#.###.###...#.###.###"
]

zero_to_nine = []
10.times do |i|
  from = i * 4
  to = i * 4 + 3
  tmp = []
  ex_numbers.each do |num|
    tmp << num[from..to]
  end
  zero_to_nine << tmp
end

n = gets.to_i
nums = []
5.times do
  num = gets.chomp
  nums << num.chop
end
ans = []
n.times do |i|
  from = i * 4
  to = i * 4 + 3
  tmp = []
  nums.each do |num|
    tmp << num[from..to]
  end
  ans << zero_to_nine.find_index(tmp)
end
puts ans.join
