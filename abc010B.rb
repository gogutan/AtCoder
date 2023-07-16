n = gets.to_i
flowers = gets.split.map(&:to_i)
deduction = 0
flowers.each do |flower|
  flower.downto(0) do |rest|
    if rest % 2 == 0 || rest % 3 == 2
      deduction += 1
    else
      break
    end
  end
end
puts deduction
