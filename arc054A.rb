l, esc_v, takahashi_v, start, dest = gets.split.map(&:to_i)
dist_clockwise = dest > start ? dest - start : l - (start - dest)
dist_anti_clockwise = l - dist_clockwise
relative_clockwise_v = takahashi_v + esc_v
relative_anti_clockwise_v = takahashi_v - esc_v
time_clockwise = dist_clockwise / relative_clockwise_v.to_f
time_anti_clockwise = dist_anti_clockwise / relative_anti_clockwise_v.to_f
puts [time_clockwise, time_anti_clockwise].select { |a| a >= 0 }.min
