n, m, q = gets.split.map(&:to_i)
queries = []
q.times { queries << gets.split.map(&:to_i) }
solved = Array.new(n + 1) { Array.new }
scores = Array.new(m + 1, n)
queries.each do |query, participant, problem|
  case query
  when 1
    ans = 0
    solved[participant].each do |i|
      ans += scores[i]
    end
    puts ans
  else
    scores[problem] -= 1
    solved[participant] << problem
  end
end
