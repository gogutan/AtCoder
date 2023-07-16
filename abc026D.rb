A, B, C = gets.split.map(&:to_i)

def f(t)
  A * t + B * Math.sin(C * t * Math::PI)
end

puts (0.0...Float::INFINITY).bsearch { |t| f(t) >= 100.0 }
