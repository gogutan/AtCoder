n, m = gets.split.map(&:to_i)
steps = gets.chomp.split("").reverse
answers = []
current_step = 0
until current_step == n do
  stepped = false
  m.downto(1) do |index|
    if steps[current_step + index] == "0"
      current_step += index
      answers << index
      stepped = true
      break
    end
  end
  if stepped == false
    puts -1
    exit
  end
end
puts answers.reverse.join(" ")
