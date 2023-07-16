require 'benchmark'
array_1 = (-10 ** 6...10 ** 6).to_a.shuffle
array_2 = array_1.dup # 数値とシンボルはイミュータブルなので、浅いコピーでOK…というのも競プロで学びました
Benchmark.bm do |x|
  x.report("1:") { array_1.sort { |x, y| x.abs <=> y.abs } }
  x.report("2:") { array_2.sort_by { |x| x.abs } }
end
