a, b, c = gets.chomp.split(" ").map(&:to_i)

def median(array)
  sorted_array = array.sort
  if sorted_array.length.odd?
    return sorted_array[sorted_array.length / 2]
  else
    (sorted_array[sorted_array.length / 2 - 1] + sorted_array[sorted_array.length / 2]) / 2.0
  end
end

median = median([a, b, c])

puts median