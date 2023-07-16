n = gets.to_i
numbers = gets.chomp.split(" ").map(&:to_i)
count = 0
judge = true
begin
  numbers.each_with_index do |number, i|
    if number.even?
      numbers[i] = number / 2
    else
      judge = false
      break
    end
  end
  if judge == true
    count += 1
  else
    break
  end
end while true
puts count