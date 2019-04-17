def my_unique(array)

    unique_hash = Hash.new(0)

     array.each { |el| unique_hash[el] += 1 }

     unique_hash.keys
end

class Array
    def two_sum
        pairs = []
        (0...self.length-1).each do |i|
            (i+1...self.length).each do |j|
                pair = [i,j]
                pairs << pair if self[i] + self[j] == 0 && i!=j
            end
        end
        pairs
    end

    def my_transpose
        arr = []
            (0...self.length).each do |row|
                subarr = []
                (0...self.length).each do |col|
                    subarr<<self[col][row]
                end
                arr << subarr
            end
            arr
    end

end

def stock_picker(array)
        price_diff = array[1] - array[0]
        buy_day = 0
        sell_day = 1
    (0...array.length).each do |buy|
        (buy+1...array.length).each do |sell|
            val = array[sell] - array[buy]
            if val > price_diff
                price_diff = val
                buy_day = buy
                sell_day = sell
            end
        end
    end
    [buy_day, sell_day]
end


