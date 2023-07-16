o = gets.chomp.split("")
e = gets.chomp.split("")
password = ""
until o.empty?
  password += o.shift
  password += e.shift unless e.empty?
end
puts password
