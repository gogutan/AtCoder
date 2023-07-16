x = gets.chomp
x.gsub!(/ch|[oku]/, "")
puts x == "" ? "YES" : "NO"
