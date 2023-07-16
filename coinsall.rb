A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i
count = 0
#総当たりバージョン
A.downto(0) do |num500|
  B.downto(0) do |num100|
    C.downto(0) do |num50|
      if num500 * 500 + num100 * 100 + num50 * 50 == X
        count += 1
      end
    end
  end
end
puts count