current = gets.to_i
ng = []
3.times do
  ng << gets.to_i
end
rest_deduction = 100
ans = "NO"
if ng.include?(current)
  puts ans
  exit
end
while rest_deduction > 0 do
  if ng.include?(current - 3) == false
    current -= 3
    rest_deduction -= 1
    if current <= 0
      ans = "YES"
      break
    end
  elsif ng.include?(current - 2) == false
    current -= 2
    rest_deduction -= 1
    if current <= 0
      ans = "YES"
      break
    end
  elsif ng.include?(current - 1) == false
    current -= 1
    rest_deduction -= 1
    if current <= 0
      ans = "YES"
      break
    end
  else
    break
  end
end
puts ans