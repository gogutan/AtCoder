s = gets.chomp.split("")
s << "T"
x, y = gets.split.map(&:to_i)
t_count = 0
f_count = 0
x_moves = []
y_moves = []
s.each do |c|
  if c == "F"
    f_count += 1
  else
    t_count += 1
    if t_count == 1
      x -= f_count
    elsif t_count.even?
      y_moves << f_count if f_count > 0
    else
      x_moves << f_count if f_count > 0
    end
    f_count = 0
  end
end
x_moves.sort!
y_moves.sort!

x_must_deduced, x_mod = ((x_moves.inject(:+) || 0) - x.abs).divmod(2)
y_must_deduced, y_mod = ((y_moves.inject(:+) || 0) - y.abs).divmod(2)

if x_mod > 0 || y_mod > 0
  puts "No"
  exit
end

if x_must_deduced > 0
  options = [0]
  until x_moves.empty?
    next_x = x_moves.shift
    break if next_x > x_must_deduced
    options += options.map{ |n| n + next_x }
    options.uniq!
    if options.include?(x_must_deduced)
      x_must_deduced = 0
      break
    end
  end
end

if y_must_deduced > 0
  options = [0]
  until y_moves.empty?
    next_y = y_moves.shift
    break if next_y > y_must_deduced
    options += options.map{ |n| n + next_y }
    options.uniq!
    if options.include?(y_must_deduced)
      y_must_deduced = 0
      break
    end
  end
end

if x_must_deduced == 0 && y_must_deduced == 0
  puts "Yes"
else
  puts "No"
end
