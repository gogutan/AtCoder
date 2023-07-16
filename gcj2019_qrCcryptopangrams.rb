# solving

require 'prime'

prime_nums = {}
101.upto(10000) do |i|
  prime_nums[i] = Prime.each(i)
end

t = gets.to_i
nums = []
ciphertexts = []
t.times do
  nums << gets.split.map(&:to_i)
  ciphertexts << gets.split.map(&:to_i)
end

t.times do |i|
  num, length = nums[i]
  ciphertexts[i].each do |ciphertext|
    
  end
end