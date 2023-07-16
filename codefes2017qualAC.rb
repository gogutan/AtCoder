h, w = gets.split.map(&:to_i)
alphabes_memo = Hash.new(0)
h.times do
  gets.chomp.each_char { |c| alphabes_memo[c] += 1 }
end
same_places_memo = Hash.new(0)

# 元の場所、x軸線対称、y軸線対称、点対称が何ヶ所存在するか
def same_places (h, w, r, c)
  [[r, c], [h - 1 - r, c], [r, w - 1 - c], [h - 1 - r, w - 1 - c]].uniq.size
end

h.times do |r|
  w.times do |c|
    same_places_memo[same_places(h, w, r, c)] += 1
  end
end

mod_memo = Hash.new(0)

# 4 で割った余りがあればメモ
alphabes_memo.values.each do |v|
  mod = v % 4
  if mod == 1
    mod_memo[1] += 1
  elsif mod == 2
    mod_memo[2] += 2
  elsif mod == 3
    mod_memo[1] += 1
    mod_memo[2] += 2
  end
end

mod_memo[1] -= same_places_memo[1]
mod_memo[2] -= same_places_memo[2]

if mod_memo[1] <= 0 && mod_memo[1] + mod_memo[2] <= 0
  puts "Yes"
else
  puts "No"
end
