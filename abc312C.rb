INF = 10 ** 10
n, m = gets.split.map(&:to_i)
sellers = gets.split.map(&:to_i).sort
buyers = gets.split.map(&:to_i).sort.reverse
ans = (1..INF).bsearch do |price|
        sellers_who_can_sell = sellers.bsearch_index { |s| s > price } || sellers.size
        buyers_who_can_buy = buyers.bsearch_index { |b| b < price } || buyers.size
        sellers_who_can_sell >= buyers_who_can_buy
      end
puts ans
