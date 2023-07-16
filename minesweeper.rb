h, w = gets.chomp.split(" ").map(&:to_i)
rows = []
h.times do
  rows.push(gets.chomp.chars)
end
outputs = rows
count = 0
rows.each_with_index do |ary, aryIndex|
  ary.each_with_index do |elm, elmIndex|
    if elm != "#"
      searchAry = [[aryIndex - 1, elmIndex - 1], [aryIndex - 1, elmIndex], [aryIndex - 1, elmIndex + 1], [aryIndex, elmIndex - 1], [aryIndex, elmIndex + 1], [aryIndex + 1, elmIndex - 1], [aryIndex + 1, elmIndex], [aryIndex + 1, elmIndex + 1]]
      searchAry.each do |search|
        if search[0] >= 0 && search[0] <= h - 1 && search[1] >= 0 && search [1] <= w - 1
          if rows[search[0]][search[1]] == "#"
            count += 1
          end
        end
      end
      outputs[aryIndex][elmIndex] = count
    end
    count = 0
  end
end
outputs.each do |output|
  puts "#{output.join}\r"
end