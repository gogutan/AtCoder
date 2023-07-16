n, m = gets.split.map(&:to_i)
ships = []
m.times { ships << gets.split.map(&:to_i) }
first_ships = ships.select { |i| i[0] == 1 || i[1] == 1 }
second_ships = ships.select { |i| i[0] == n || i[1] == n }
first_ships.each do |first_ship|
  first_ship.delete(1)
end
first_ships.flatten! unless first_ships.empty?
second_ships.each do |second_ship|
  second_ship.delete(n)
end
second_ships.flatten!.sort! unless second_ships.empty?

ans = "IMPOSSIBLE"
first_ships.each do |first_ship|
  if first_ship == second_ships.bsearch { |i| i >= first_ship }
    ans = "POSSIBLE"
    break
  else
    next
  end
end

puts ans
