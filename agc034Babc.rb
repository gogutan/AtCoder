s = gets.chomp.to_s
ans = 0
previous_a_count = 0

# s を先頭から検索し "ABC" が含まれる限り、繰り返す
while s.index("ABC") do
  # 前半の文字列を "....A" とする
  former_s = s[0..s.index("ABC")]
  # 後半の文字列を "BC...." とする
  latter_s = s[s.index("ABC") + 1 ..s.length]
  a_count = 0
  bc_count = 0

  # 前半の文字列の末尾に "A" が何回連続で出現するか調べる
  while former_s.end_with?("A") do
    # 出現した "A" は削除する
    former_s.slice!(former_s.length - 1)
    a_count += 1
  end

  # 後半の文字列の先頭に "BC" が何回連続で出現するか調べる
  while latter_s.start_with?("BC") do
    # 出現した "BC" は削除する
    latter_s.slice!(0, 2)
    bc_count += 1
  end

  # s が "ABC" "AAAABC" などで始まる場合は、 previous_a_count を a_count に加算する
  if a_count - s.index("ABC") == 1
    a_count += previous_a_count
  end

  # "A" の出現回数と "BC" の出現回数をかけ合わせ、 ans に加算する
  # （例えば "AAABCBC" なら、"BCBCAAA" になるまで6回の操作が必要である）
  ans += a_count * bc_count

  # 次回のループには、後半の文字列を用いる
  # （前半の文字列には "ABC" は含まれていないため）
  s  = latter_s
  # a_count を 前回の a_count として格納しておく
  previous_a_count = a_count
end

puts ans