t = gets.to_i
as = []
t.times do
  as << gets.split.map(&:to_i)
end

as.each do |a, s|
  s -= a * 2
  if s < 0
    puts "No"
    next
  else
    memo = Hash.new(false)
    ans = true
    s.to_s(2).reverse.chars.each_with_index do |bit, i|
      memo[i] = true if bit == "1"
    end
    a.to_s(2).reverse.chars.each_with_index do |bit, i|
      if bit == "1" && memo[i] == true
        ans = false
        break
      end
    end
    puts ans ? "Yes" : "No"
  end
end
