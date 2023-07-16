s = gets.chomp.split("")
alphabets = ("a".."z").to_a
# まだ含まれていない文字がある場合（25文字以下の場合）、1番小さいアルファベットを末尾に足す
if addition = alphabets.find { |a| !s.include?(a) }
  s << addition
  puts s.join
# 後ろから見て降順が終わっている箇所 top を探す
# （abcdefghijklmnopqrstuvwzyx であれば zyx 以降が理論値のため）
else
  top = nil
  previous_ord = 0
  s.reverse.each_with_index do |c, i|
    if c.ord > previous_ord
      previous_ord = c.ord
    else
      top = i
      break
    end
  end
# top - 1 を top - 1 より大きい且つ top 以降で 1 番小さいアルファベットと差し替え、以降は空
  if top
    former = s[0...s.size - top]
    latter = s[s.size - top..-1].sort
    former[-1] = latter.find { |c| c.ord > former.last.ord }
    puts former.join
  else
    puts -1
  end
end
