n = gets.to_i
numbers = gets.split(" ").map(&:to_i)
cumulative_zeros = []
n.times do
  cumulative_zeros.push(0)
end
answers = []
count = 0
changed = true
while cumulative_zeros.length > count && changed == true do
  numbers.each_with_index.reverse_each do |number, index|
    changed = false
    # puts numbers
    # puts ""
    if number <= cumulative_zeros[index] && number != 0
      puts "-1"
      exit
    elsif number - 1 == cumulative_zeros[index]
      answers.push(number)
      numbers[index] = 0
      if index < cumulative_zeros.length - 1
        cumulative_zeros[index + 1..cumulative_zeros.length - 1].each_with_index do |zero, index2|
          cumulative_zeros[index2 + index + 1] += 1
        end
      end
      count += 1
      changed = true
      # puts "cumulative#{cumulative_zeros}"
      # puts ""
      break
    end
  end
end

if answers.length == cumulative_zeros.length
  puts answers
else
  puts "-1"
end