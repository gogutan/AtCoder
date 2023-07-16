cookies = gets.split.map(&:to_i)
sum = cookies.sum
2.times do |first|
  2.times do |second|
    2.times do |third|
      2.times do |fourth|
        next if first == 0 && second == 0 && third == 0 && fourth == 0
        snuke = 0
        snuke += cookies[0] if first == 1
        snuke += cookies[1] if second == 1
        snuke += cookies[2] if third == 1
        snuke += cookies[3] if fourth == 1
        if snuke == sum - snuke
          puts "Yes"
          exit
        end
      end
    end
  end
end
puts "No"
