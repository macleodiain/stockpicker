def stockpicker (prices)

    highest_profit = 0
    sell_day = 0
    buy_day = 0

    prices.each_with_index do |price, index|
        for i in index..(prices.size - 1)
            if prices[i] - price > highest_profit
                highest_profit = prices[i] - price
                sell_day = i
                buy_day = index
            end
        end
    end
    puts "Buy:  #{buy_day} -- Sell:#{sell_day}"
    puts "#{prices[sell_day]} - #{prices[buy_day]} = #{prices[sell_day]-prices[buy_day]}"

    return [buy_day, sell_day]
end
stockpicker([17,3,6,9,15,8,6,1,10])