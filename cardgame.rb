N = gets.to_i
cards = gets.chomp.split(" ").map(&:to_i)
alice_sum = 0
bob_sum = 0
next_alice = true
cards.sort!.reverse!
0.upto(N-1) do |num|
  if next_alice == true
    alice_sum += cards[num]
    next_alice = false
  elsif next_alice == false
    bob_sum += cards[num]
    next_alice = true
  end
end
puts alice_sum - bob_sum