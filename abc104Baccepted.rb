s = gets.chomp.to_s
puts s[/^A[a-z]+C[a-z]+$/] ? "AC" : "WA"