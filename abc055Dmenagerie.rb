n = gets.to_i
s = gets.chomp.split("")
choices = [["S", "S"], ["S", "W"], ["W", "S"], ["W", "W"]]
choices.each_with_index do |choice|
  until choice.size == n
    tmp = choice[-2, 2]
    if (tmp.uniq.size == 1 && s[choice.size - 1] == "o") || (tmp.uniq.size == 2 && s[choice.size - 1] == "x")
      choice << "S"
    else
      choice << "W"
    end
  end
  last_surrounded_same = (choice.last == "S" && s.last == "o") || (choice.last == "W" && s.last == "x")
  last_correct = (last_surrounded_same && choice[-2] == choice[0]) || (!last_surrounded_same && choice[-2] != choice[0])
  first_surrounded_same = (choice.first == "S" && s.first == "o") || (choice.first == "W" && s.first == "x")
  first_correct = (first_surrounded_same && choice[-1] == choice[1]) || (!first_surrounded_same && choice[-1] != choice[1])
  if last_correct && first_correct
    puts choice.join
    exit
  end
end
puts -1
