b = gets.to_i

n_option = (1..18).bsearch do |n|
             n ** n >= b
           end

puts n_option ** n_option == b ? n_option : -1
