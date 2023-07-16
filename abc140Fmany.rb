n = gets.to_i
slimes = gets.split.map(&:to_i).sort { |a, b| b <=> a }
slimes_generated = Array.new(n + 1) { Array.new }
slimes_generated[0] << slimes.shift
(n - 1).times do |index|
  index.downto(0).each do |index2|
    slimes_generated[index2].reverse.each do |slime_generated|
      if slime_index = slimes.bsearch_index { |i| i < slime_generated }
        slimes_generated[index + 1] << slimes.delete_at(slime_index)
      else
        puts "No"
        exit
      end
    end
  end
end
slimes_generated.flatten!
(2 ** (n - 1)).times do |index|
  if slimes_generated[index] <= slimes[index]
    puts "No"
    exit
  end
end
puts "Yes"
