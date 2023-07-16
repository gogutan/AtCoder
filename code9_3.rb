string = '((()()))'

answers = []
stack = []

string.each_char.with_index do |c, i|
  if c == '('
    stack << i
  else
    if stack.empty?
      puts ") exists more than ( !"
      exit
    else
      answers << [stack.pop, i]
    end
  end
end

if stack.empty?
  puts 'Answers are:'
  pp answers
else
  puts '( exists more than ) !'
end
