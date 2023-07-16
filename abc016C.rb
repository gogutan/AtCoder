n, m = gets.split.map(&:to_i)
friends = Array.new(n) { Array.new }
friends_friends = Array.new(n) { Array.new }

m.times do
  a, b = gets.split.map(&:to_i).map(&:pred)
  friends[a] << b
  friends[b] << a
end

friends.each_with_index do |friend, index|
  friend.each do |f|
    friends[f].each do |ff|
      friends_friends[index] << ff
    end
  end
end

friends_friends.each_with_index do |friends_friend, index|
  friends_friend.uniq!
  friends_friend.delete_if { |i| i == index || friends[index].include?(i) }
  puts friends_friend.size
end
