def stock_picker(prices)
  best_profit = 0
  best_pair = []
  prices.each_with_index do |price, i|
    (i + 1..prices.length - 1).each do |j|
      profit = prices[j] - prices[i]
      if profit > best_profit
        best_profit = profit
        best_pair = [i, j]
      end
    end
  end
  best_pair
end

p stock_picker([17,3,6,9,15,8,6,1,10])
