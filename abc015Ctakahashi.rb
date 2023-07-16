$num_of_questions, $num_of_options = gets.split(" ").map(&:to_i)
$questions = []
$num_of_questions.times do
  $questions.push(gets.chomp.split(" ").map(&:to_i))
end


def recursive_dfs(xor_patterns, q_count, xor)
  # q_countが質問数に到達したら、xorを配列に格納する
  if q_count == $num_of_questions
    xor_patterns << xor
    return
  # 到達していない場合は、q_countに1を足す
  else
    q_count += 1
    # 選択肢の数だけ、再帰呼び出しをする
    $num_of_options.times do |index|
      # [引数のxor]と[選択肢]のxorを引数に入れる
      recursive_dfs(xor_patterns, q_count, xor ^ $questions[q_count - 1][index])
      # xor = xor ^ $questions[q_count - 1][index] としてからxorを引数に入れると、
      # 2つ目以降のxor値を求める時に、前の選択肢のxor値を引き継いでしまうため注意
    end
  end
end

# 結果を格納するための配列
xor_patterns = []
# q_countは0、整数値のxorは0として、再帰呼び出し開始
recursive_dfs(xor_patterns, 0, 0)
# 結果に0が含まれていれば"Found"、含まれていなければ"Nothing"を出力する
if(xor_patterns.include?(0))
  puts "Found"
else
  puts "Nothing"
end