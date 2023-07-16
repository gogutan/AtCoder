t = gets.to_i
rival_paths = []
t.times { gets; rival_paths << gets.chomp.chars }
rival_paths.each.with_index(1) do |rival_path, i|
  path = []
  rival_path.each do |c|
    if c == "S"
      path << "E"
    else
      path << "S"
    end
  end
  puts "Case ##{i}: #{path.join}"
end
