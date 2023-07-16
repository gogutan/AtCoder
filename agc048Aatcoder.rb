t = gets.to_i
strings = []
t.times do
  strings << gets.chomp
end
strings.each do |s|
  array = s.split("")
  if s > "atcoder"
    puts 0
  elsif array.all? { |c| c == "a" }
    puts -1
  else
    index = array.find_index { |c| c != "a" }
    if index == 1
      puts 1
    else
      c = array[index]
      if c > "t"
        puts index - 1
      else
        puts index
      end
    end
  end
end
