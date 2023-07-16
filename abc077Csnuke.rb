n = gets.to_i
uppers = gets.split.map(&:to_i).sort
middles = gets.split.map(&:to_i).sort
lowers = gets.split.map(&:to_i).sort

middles_options = middles.map { |middle| uppers.bsearch_index { |item| middle <= item } || n }

cumulative_middles_options = []
middles_options.each_with_index do |middles_option, index|
  cumulative_middles_options << middles_option + (cumulative_middles_options[index - 1] || 0)
end

lower_middle_options = lowers.map { |lower| middles.bsearch_index { |item| lower <= item } || n }
lower_options =
  lower_middle_options.map do |lower_middle_option|
    if lower_middle_option == 0
      0
    else
      cumulative_middles_options[lower_middle_option - 1]
    end
  end

puts lower_options.inject(:+)
