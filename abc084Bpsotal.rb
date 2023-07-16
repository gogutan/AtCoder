a, b = gets.split.map(&:to_i)
s = gets.chomp

def postal_code?(string, a, b)
  string.each_char.with_index do |char, index|
    case index
    when a
      return false unless char == "-"
    else
      return false unless ("0".."9").include?(char)
    end
  end
  true
end

puts postal_code?(s, a, b) ? "Yes" : "No"

# a, b = gets.split.map(&:to_i)
# s = gets.chomp

# def postal_code?(string, a, b)
#   string.match?(/\d{#{a}}-\d{#{b}}/)
# end

# puts postal_code?(s, a, b) ? "Yes" : "No"
