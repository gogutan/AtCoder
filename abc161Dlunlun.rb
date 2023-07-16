k = gets.to_i

queue = [[1], [2], [3], [4], [5], [6], [7], [8], [9]]

count = 1
while true
  tmp = queue.shift
  last = tmp.last
  if last == 0
    queue << tmp + [0]
    queue << tmp + [1]
  elsif last == 1
    queue << tmp + [0]
    queue << tmp + [1]
    queue << tmp + [2]
  elsif last == 2
    queue << tmp + [1]
    queue << tmp + [2]
    queue << tmp + [3]
  elsif last == 3
    queue << tmp + [2]
    queue << tmp + [3]
    queue << tmp + [4]
  elsif last == 4
    queue << tmp + [3]
    queue << tmp + [4]
    queue << tmp + [5]
  elsif last == 5
    queue << tmp + [4]
    queue << tmp + [5]
    queue << tmp + [6]
  elsif last == 6
    queue << tmp + [5]
    queue << tmp + [6]
    queue << tmp + [7]
  elsif last == 7
    queue << tmp + [6]
    queue << tmp + [7]
    queue << tmp + [8]
  elsif last == 8
    queue << tmp + [7]
    queue << tmp + [8]
    queue << tmp + [9]
  elsif last == 9
    queue << tmp + [8]
    queue << tmp + [9]
  end
  count += 1
  if count > k
    puts tmp.join
    exit
  end
end
