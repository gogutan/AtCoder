s = gets.chomp.split("")
if s.size == 2
  if s.uniq.size == 1
    puts "1 2"
    exit
  end
else
  0.upto(s.size - 3) do |left|
    tmp_s = s[left, 3]
    if tmp_s.uniq.size < 3
      puts "#{left + 1} #{left + 3}"
      exit
    end
  end
end
puts "-1 -1"
