t = gets.to_i
n = gets.to_i
dumplings = gets.split.map(&:to_i)
m = gets.to_i
customers = gets.split.map(&:to_i)

ans = "yes"
customers.each do |customer|
  index = dumplings.bsearch_index { |item| item >= customer - t }
  if !index || dumplings[index] > customer
    ans = "no"
    break
  else
    dumplings.delete_at(index)
  end
end

puts ans
