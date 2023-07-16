n = gets.to_i
hash = Hash.new{|hash, key| hash[key] = []}
n.times do |i|
  x, c = gets.split.map(&:to_i)
  hash[i] << x
end
hash_min = {nil}
hash_max = {nil}
hash.each do |k, v|
  if hash_min[k] == nil || hash_min[k] > v
    hash_min[k] = v
  end
  if hash_max[k] == nil || hash_max[k] < v
    hash_max[k] = v
  end
end
keys = hash_max.keys
going_right = true
