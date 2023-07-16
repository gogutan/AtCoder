n = gets.to_i
$stores = []
n.times { $stores << gets.split.map(&:to_i) }
$profits = []
n.times { $profits << gets.split.map(&:to_i) }
$answers = []

def (decided, openings)
  if decided == 10
    profit_sum = 0
    $stores.each_with_index do |store, s_index|
      count = 0
      openings.each_with_index do |opening, o_index|
        next if opening == 0
        count += 1 if store[o_index] == 1
      end
      profit_sum += $profits[s_index][count]
    end
    $answers << profit_sum
    return
  end
  
  dfs(decided + 1, [*openings, 0])
  dfs(decided + 1, [*openings, 1])
end

dfs(0, [])

$answers.shift
puts $answers.max
