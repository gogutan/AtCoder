# しゃくとり法　尺取り法

n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

sum = 0
right = 0
ans = 0

0.upto(n - 1) do |left|
  # right を次に進めても OK かどうか確認してから、right を 1 進める
  while right < n && sum < k
    sum += nums[right]
    right += 1
  end
  ans += n - right + 1 if sum >= k
  sum -= nums[left]
end

puts ans
