N = gets.to_i
DAMS = gets.split.map(&:to_i)

def mountains(first_mountain)
  mountains = [first_mountain]
  (1...N).each do |i|
    next_mountain = (DAMS[i - 1] - mountains.last / 2) * 2
    mountains << next_mountain
  end
  mountains
end

from = (0..DAMS[0] * 2).bsearch { |first_mountain|
  mountains = mountains(first_mountain)
  (mountains.first + mountains.last) / 2 >= DAMS.last
}

puts mountains(from).join(" ")
