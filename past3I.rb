n = gets.to_i
q = gets.to_i
queries = []
q.times { queries << gets.split.map(&:to_i) }
row_memo = (0...n).to_a
column_memo = (0...n).to_a
queries.each do |query, a, b|
  case query
  when 1
    row_memo[a - 1], row_memo[b - 1] = row_memo[b - 1], row_memo[a - 1]
  when 2
    column_memo[a - 1], column_memo[b - 1] = column_memo[b - 1], column_memo[a - 1]
  when 3
    row_memo, column_memo = column_memo, row_memo
  else
    row = row_memo[a - 1]
    column = column_memo[b - 1]
    puts n * row + column
  end
end
