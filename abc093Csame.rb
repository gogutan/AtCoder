arr = gets.chomp.split(" ").map(&:to_i)
count = 0
all_same = false
until all_same == true
  if arr.max - arr.min >= 2
    arr[arr.index(arr.min)] += 2
    count += 1
  elsif arr.max - arr.min >= 1
    if arr.select {|n| n == arr.min}.length == 2
      count += 1
      all_same = true
    else
      count += 2
      all_same = true
    end
  else
    all_same = true
  end
end
puts count