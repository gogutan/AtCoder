n, a, b, c = gets.split.map(&:to_i)
nums = [a, b, c]
alphabets = ["A", "B", "C"]
queries = []
n.times do
  first, second = gets.chomp.split("")
  queries << [alphabets.find_index(first), alphabets.find_index(second)]
end
ans = []
queries.each_with_index do |(first, second), index|
  if nums[first] > nums[second]
    nums[first] -= 1
    nums[second] += 1
    ans << second
  elsif nums[first] < nums[second]
    nums[first] += 1
    nums[second] -= 1
    ans << first
  else
    if index < n - 1 && queries[index + 1].include?(first)
      nums[first] += 1
      nums[second] -= 1
      ans << first
    else
      nums[first] -= 1
      nums[second] += 1
      ans << second
    end
  end
  if nums.any? { |num| num < 0 }
    puts "No"
    exit
  end
end
puts "Yes"
ans.each do |a|
  puts alphabets[a]
end
