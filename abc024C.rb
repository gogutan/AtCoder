n, d, k = gets.split.map(&:to_i)
moves = []
d.times { moves << gets.split.map(&:to_i) }
races = []
k.times { races << gets.split.map(&:to_i) }
races.each do |from, to|
  current = from
  if from < to
    moves.each_with_index do |(a, b), index|
      if a <= current
        current = [b, current].max
        if current >= to
          puts index + 1
          break
        end
      end
    end
  else
    moves.each_with_index do |(a, b), index|
      if b >= current
        current = [a, current].min
        if current <= to
          puts index + 1
          break
        end
      end
    end
  end
end
