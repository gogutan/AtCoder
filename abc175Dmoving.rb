n, k = gets.split.map(&:to_i)
pieces = gets.split.map(&:to_i).map(&:pred)
nums = gets.split.map(&:to_i)
if nums.select { |num| num >= 0 }.size == 0
  puts nums.max
  exit
end
orders = []
checked = Hash.new(false)
answers = []
answer = 0

n.times do |from|
  next if checked[from]
  scores = [nums[from]]
  current = pieces[from]
  checked[from] = true
  while current != from
    scores << nums[current]
    checked[current] = true
    current = pieces[current]
  end
  sum = scores.sum
  scores_size = scores.size
  div, mod = k.divmod(scores_size)
  tmp = sum > 0 ? sum * div : 0
  addition = 0
  addition_b = 0


  # required_iteration = div > 0 ? scores_size - 1 : mod
  # scores_size.times do |f|
  #   applicables = []
  #   required_iteration.times do |a|
  #     applicables << (f + a) % scores_size
  #   end
  #   tm = 0
  #   applicables.each.with_index(1) do |i, app_i|
  #     tm += scores[i]
  #     rest = k - app_i
  #     t = tm + tmp * rest / scores_size
  #     ans = t if ans < t
  #   end
  # end


  # if tmp == 0 && div > 0
  #   mod = scores_size - 1
  # end

  i = div > 0 ? scores_size - 1 : mod

  # puts "#{tmp} #{div} #{mod} #{sum}"
  # (1..mod).each do |i|
    # i = mod
    # applicables = (0...i).to_a
    scores_size.times do |f|
      # applicables = []
      # i.times do |a|
      #   applicables << (f + a) % scores_size
      # end
      tm = 0

      i.times do |nn|
        applicable = (nn + f) % scores_size
        tm += scores[applicable]
        if nn + 1 <= mod
          addition = tm if addition < tm
        else
          addition_b = tm if addition_b < tm
        end
      end


      # applicables.each.with_index(1) do |i, app_i|
      #   tm += scores[i]
      #   if app_i <= mod
      #     addition = tm if addition < tm
      #   else
      #     addition_b = tm if addition_b < tm
      #   end
      # end
      # addition = tm if addition < tm
    end
  # end
  # answers << tmp + addition
  tmp_add = tmp + addition
  answer = tmp_add if answer < tmp_add
  tmp -= sum if sum > 0
  tmp_add_b = tmp + addition_b
  answer = tmp_add_b if answer < tmp_add_b
  # answers << tmp + addition_b
end
# puts answers.max
puts answer