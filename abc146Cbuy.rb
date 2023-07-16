# bsearch 範囲オブジェクト downto 降順 reverse

def bsearch_desc(a, b, &proc)
  inverse_proc = -> (n) { proc.call(-n) }
  value *= -1 if value = (-a..-b).bsearch(&inverse_proc)
end

a, b, x = gets.split.map(&:to_i)
puts bsearch_desc(10 ** 9, 1) { |n| a * n + b * n.to_s.size <= x } || 0