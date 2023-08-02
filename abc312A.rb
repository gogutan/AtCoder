s = gets.chomp
ans = %w(ACE BDF CEG DFA EGB FAC GBD).any? { _1 == s}
puts ans ? 'Yes' : 'No'
