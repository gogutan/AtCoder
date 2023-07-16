s = gets.chomp.split
n = gets.to_i
ngs = Hash.new{|hash, key| hash[key] = []}
n.times do
  ng = gets.chomp
  ngs[ng.size] << ng
end
ans = []
s.each do |string|
  filter = false
  ngs[string.size].each do |ng|
    ng.each_char.with_index do |c, i|
      if c != string[i] && c != "*"
        break
      else
        if i == string.size - 1
          filter = true
        end
      end
      break if filter == true
    end
  end
  if filter
    ans << "*" * string.size
  else
    ans << string
  end
end
puts ans.join(" ")
