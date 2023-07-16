n = gets.to_i
# 末尾3文字と文字列の数をメモ
memo = Array.new(n + 1) { Hash.new(0) }
keys = []
queue = [""]
until queue.empty?
  string = queue.shift
  if string.size == 3
    keys << string if string != "AGC" && string != "ACG" && string != "GAC"
  else
    queue.push(string + "A")
    queue.push(string + "C")
    queue.push(string + "G")
    queue.push(string + "T")
  end
end
values = Array.new(61, 1)
ary = [keys, values].transpose
# 3文字目到達時の、末尾3文字(key)と文字列の数(value)をメモ
memo[3] = ary.to_h

(3...n).each do |index|
  memo[index].each do |key, value|
    [key + "A", key + "C", key + "G", key + "T"].each do |string|
      unless string =~ /AGC.|GAC.|ACG.|.AGC|.GAC|.ACG|A.GC|AG.C/
        memo[index + 1][string[1, 3]] += value
      end
    end
  end
end

puts memo[n].values.inject(:+) % (10 ** 9 + 7)
