def stock_picker(prices)
  buy_day = 0
  sell_day = 0
  max_profit = 0

  prices.each_with_index do | buy_price, current_buy_day|
    best_sell_day = 0
    best_profit = 0

    prices.each_with_index do |sell_price, current_sell_day|

      # no selling before buying
      if current_sell_day <= current_buy_day then next end

      if sell_price - buy_price > best_profit
        best_profit = sell_price - buy_price
        best_sell_day = current_sell_day
      end
    end

    if best_profit > max_profit
      max_profit = best_profit
      buy_day = current_buy_day
      sell_day = best_sell_day
    end
  end

  [buy_day, sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])