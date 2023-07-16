n, m, q = gets.split.map(&:to_i)
trains = []
m.times { trains << gets.split.map(&:to_i) }
queries = []
q.times { queries << gets.split.map(&:to_i) }
memo = Array.new(n + 1) { Array.new(n + 1, 0) }

trains.each { |from, to| memo[from][to] += 1 }

1.upto(n) do |from|
  1.upto(n) do |to|
    memo[from][to] += memo[from][to - 1]
  end
end

1.upto(n) do |to|
  1.upto(n) do |from|
    memo[from][to] += memo[from - 1][to]
  end
end

queries.each do |from, to|
  puts memo[to][to] - memo[from - 1][to] - memo[to][from - 1] + memo[from - 1][from - 1]
end
