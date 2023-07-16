a, b = gets.split.map(&:to_i)
def leap_years(year)
  year / 4 - year / 100 + year / 400
end
puts leap_years(b) - leap_years(a - 1)
