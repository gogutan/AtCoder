n, m = gets.split.map(&:to_i)
neccesary_trials = 2 ** m
ms_per_trial = 1900 * m + 100 * (n - m)
puts neccesary_trials * ms_per_trial
