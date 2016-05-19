def stock_picker(arr)
	best_buy_day = 0
	best_sell_day = 0
	max_profit = 0

	arr[0..-2].each_with_index do |buy, i|
		arr[(i+1)..-1].each_with_index do |sell, j|
			if (sell - buy) > max_profit
				best_sell_day = j + (i + 1)
				best_buy_day = i
				max_profit = sell - buy			
			end
		end
	end
	puts "The best days to sell and buy are #{[best_buy_day,best_sell_day]}."
end

stock_picker([17,3,6,9,15,8,6,1,10])
