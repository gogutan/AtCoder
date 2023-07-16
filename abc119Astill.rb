s = gets.chomp.to_s
month = s[5, 2]
if ["01", "02", "03", "04"].include?(month)
  puts "Heisei"
else
  puts "TBD"
end