# n + 1 長の array を返す
def cumulative_sum(array)
  tmp = [0]
  previous = 0
  array.each { |num| tmp << previous += num }
  tmp
end

def where_to_cut(cumulative_sum, deduction, from, to)
  
  0.upto(n - 1) do |left|
    # right を次に進めても OK かどうか確認してから、right を 1 進める
    while right < n && sum < k
      sum += nums[right]
      right += 1
    end
    ans += n - right + 1 if sum >= k
    sum -= nums[left]
  end
end

n = gets.to_i
nums = gets.split.map(&:to_i)
cumulative_sum = cumulative_sum(nums)

# 2番目を固定して [1番目に場所, 2番目に切る場所, 3番目に切る場所] を全て格納する
options = []

2.upto(n - 2) do |second|

end