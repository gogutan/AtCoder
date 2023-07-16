INF = 10 ** 12
N, K = gets.split.map(&:to_i)
$eat_costs = gets.split.map(&:to_i).sort
$food_costs = gets.split.map(&:to_i).sort { |a, b| b <=> a }

def possible?(limit)
  neccesary_training = 0
  N.times do |i|
    tmp_cost = $eat_costs[i] - limit / $food_costs[i]
    neccesary_training += tmp_cost if tmp_cost > 0
  end
  neccesary_training <= K
end

puts (0..INF).bsearch { |limit| possible?(limit) }
