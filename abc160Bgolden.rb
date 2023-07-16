x = gets.to_i
div_500, mod_500 = x.divmod(500)
div_5, mod_5 = mod_500.divmod(5)
puts div_500 * 1000 + div_5 * 5
