num = gets.to_i
@steps = gets.split(" ").map(&:to_i)
@memo = []
@memo[0] = 0
@memo[1] = (@steps[0] - @steps[1]).abs

def recursive_min(step_number)
  if @memo[step_number]
    return @memo[step_number]
  else
    # 1個前からのコスト
    first = (@steps[step_number - 1] - @steps[step_number]).abs + recursive_min(step_number - 1)
    # 2個前からのコスト
    second = (@steps[step_number - 2] - @steps[step_number]).abs + recursive_min(step_number - 2)
    # 小さい方を格納
    min = [first, second].min
    @memo[step_number] = min
    return min
  end
end

(2..num - 1).each do |index|
  recursive_min(index)
end

puts recursive_min(num - 1)