def bsearch(nums, age, count)
  count += 1
  target_index = nums.size / 2
  answer = nums[target_index]

  puts "A: Are you #{answer} years old?(trial: #{count})"
  if age == answer
    puts "B: Yes, I am #{answer} years old!"
    return
  elsif age > answer
    puts "B: No, I am older than #{answer} years old."
    bsearch(nums[target_index + 1..], age, count)
  else
    puts "B: No, I am younger than #{answer} years old."
    bsearch(nums[...target_index], age, count)
  end
end

bsearch((0..65535).to_a, 25642, 0)

# (0..100000).to_a.bsearch_index { |num| num >= 25642 }

def double_loop(loop)
  count = 0
  loop.times do
    loop.times do
      count += 1
    end
  end
  puts count
end

double_loop(1000)
double_loop(10000)
