n = gets.to_i
nums = gets.split.map(&:to_i)
takahashi_options = []
(0...n).each do |index_1|
  takahashi_aoki = [-100000, -100000]
  (0...n).each do |index_2|
    next if index_1 == index_2
    max_index = [index_1, index_2].max
    min_index = [index_1, index_2].min
    tmp_takahashi = 0
    tmp_aoki = 0
    nums[min_index..max_index].each_with_index do |num, index|
      if index.even?
        tmp_takahashi += num
      else
        tmp_aoki += num
      end
    end
    takahashi_aoki = [tmp_takahashi, tmp_aoki] if takahashi_aoki[1] < tmp_aoki
  end
  takahashi_options << takahashi_aoki[0]
end
puts takahashi_options.max
