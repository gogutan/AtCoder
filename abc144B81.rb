n = gets.to_i
ans = "No"
1.upto(9) do |index1|
  1.upto(9) do |index2|
    if index1 * index2 == n
      ans = "Yes"
      break
    end
  end
  break if ans == "Yes"
end
puts ans
