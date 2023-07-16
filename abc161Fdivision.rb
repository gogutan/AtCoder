require 'prime'

# 約数リスト
def divisors(n)
  n.prime_division.inject([1]) do |array, (k, v)|
    (0..v).map{ |i| k ** i }.product(array).map{ |a, b| a * b }
  end.sort
end

n = gets.to_i
divs = divisors(n)
ans = divisors(n - 1)
divs.each do |d|
  dup_n = n
  while true
    div, mod = dup_n.divmod(d)
    if mod == 1
      ans << d
      break
    elsif mod == 0
      break if dup_n == div
      dup_n = div
    else
      break
    end
  end
end
ans.delete(1)
puts ans.uniq.size
