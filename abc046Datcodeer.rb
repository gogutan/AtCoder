s = gets.chomp.split("")
top_rock = s.count("g")
top_paper = s.count("p")
at_rock = s.size / 2
at_paper = s.size / 2
at_rock += 1 if s.size.odd?
puts at_paper - top_paper
