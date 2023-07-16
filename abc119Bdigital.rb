n = gets.to_i
otoshidama_ary = []
n.times do
  otoshidama_ary.push(gets.chomp.split(" ").map(&:to_s))
end
sum = 0
otoshidama_ary.each_with_index do |otoshidama, index|
  if otoshidama[1] == "JPY"
    sum += otoshidama[0].to_i
  elsif otoshidama[1] == "BTC"
    sum += otoshidama[0].to_f * 380000.0
  end
end
puts sum
  
