# 繰り返し二乗法
def pow(base, exp)
  if exp == 0
    1
  elsif exp.even?
    pow(base, exp / 2) ** 2
  else
    pow(base, exp / 2) ** 2 * base
  end
end

q = gets.to_i
queries = []
q.times { queries << gets.split }
s = []
queries.each do |query|
  n = query[0]
  if n == "1"
    c = query[1].to_sym
    x = query[2].to_i
    s << [c, x]
  else
    ans = 0
    d = query[1].to_i
    deleted = Hash.new(0)
    until s.empty? || d == 0
      c, x = s.shift
      if x > d
        s.unshift([c, x - d])
        x = d
      end
      d -= x
      deleted[c] += x
    end
    deleted.each do |_, v|
      ans += pow(v, 2)
    end
    puts ans
  end
end
