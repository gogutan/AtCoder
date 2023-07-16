require 'benchmark'
array_1 = (-10 ** 6...10 ** 6).to_a
array_2 = array_1.dup # 数値とシンボルはイミュータブルなので、浅いコピーでOK…というのも競プロで学びました
Benchmark.bm do |x|
  x.report("1:") { (-10 ** 7...10 ** 7).to_a }
  x.report("2:") { [*(-10 ** 7...10 ** 7).to_a] }
end
