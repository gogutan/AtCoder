A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i
count = 0
#指定の金額Xを超えたら、以降の処理は next で飛ばす
A.downto(0) do |num500|
  if num500 * 500 > X
    next
  elsif num500 * 500 == X
    count += 1
    next
  else
    B.downto(0) do |num100|
      if num500 * 500 + num100 * 100 > X
        next
      elsif num500 * 500 + num100 * 100 == X
        count += 1
        next
      else
        C.downto(0) do |num50|
          if num500 * 500 + num100 * 100 + num50 * 50 > X
            next
          elsif num500 * 500 + num100 * 100 + num50 * 50 == X
            count += 1
            break
          else
            break
          end
        end
      end
    end
  end
end
puts count