t1, t2 = gets.split.map(&:to_i)
takahashi_runs = gets.split.map(&:to_i)
aoki_runs = gets.split.map(&:to_i)

if takahashi_runs[0] * t1 + takahashi_runs[1] * t2 == aoki_runs[0] * t1 + aoki_runs[1] * t2
  puts "infinity"
  exit
end

if takahashi_runs[0] > aoki_runs[0]
  faster_runs = takahashi_runs
  slower_runs = aoki_runs
else
  faster_runs = aoki_runs
  slower_runs = takahashi_runs
end

faster_1st = faster_runs[0] * t1
slower_1st = slower_runs[0] * t1
first_gap = faster_1st - slower_1st

faster_2nd = faster_1st + faster_runs[1] * t2
slower_2nd = slower_1st + slower_runs[1] * t2
second_gap = slower_2nd - faster_2nd

if faster_2nd > slower_2nd
  puts 0
  exit
end

faster_3rd = faster_2nd + faster_runs[0] * t1
slower_3rd = slower_2nd + slower_runs[0] * t1
third_gap = faster_3rd - slower_3rd

# faster_4th = faster_3rd + faster_runs[1] * t2
# slower_4th = slower_3rd + slower_runs[1] * t2
# fourth_gap = slower_4th - faster_4th

# faster_5th = faster_4th + faster_runs[0] * t1
# slower_5th = slower_4th + slower_runs[0] * t1
# fifth_gap = faster_5th - slower_5th

first_minus_third = first_gap - third_gap
# second_minus_fourth = second_gap - fourth_gap

div1, mod1 = first_gap.divmod(first_minus_third)
ans = [div1 * 2, 0].max

if (mod1 + faster_runs[1] * t2) < slower_runs[1] * t2
  ans += 1
elsif (mod1 + faster_runs[1] * t2) > slower_runs[1] * t2
  ans -= 1
end

puts ans
