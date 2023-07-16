class Array
  def tally
    self.inject(Hash.new(0)) { |res, e| res[e] += 1; res }
  end
end

s = gets.chomp.split("")

tally = s.tally
counts = [tally["a"], tally["b"], tally["c"]]
if counts.max - counts.min < 2
  puts "YES"
else
  puts "NO"
end
