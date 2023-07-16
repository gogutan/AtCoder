INF = 10 ** 20
$k = gets.to_i
$rounds = gets.split.map(&:to_i)

def rest_children(n)
  $rounds.each do |round|
    n -= n % round
  end
  n
end

from = (1..INF).bsearch { |i| rest_children(i) >= 2 }
to = (1..INF).bsearch { |i| rest_children(i) >= 3 }

if rest_children(from) == 2
  puts "#{from} #{to - 1}"
else
  puts -1
end
