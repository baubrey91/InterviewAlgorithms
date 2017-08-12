//: [Previous](@previous)

import Foundation

var input = [7, 1, 5, 3, 6, 4]
//var input = [7, 6, 4, 3, 1]

func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count >= 2 else {
            return 0
        }
        
        var maxProfit = 0
        var lowest = prices[0]
        
        for price in prices {
            maxProfit = max(maxProfit, price - lowest)
            lowest = min(lowest, price)
        }
    return maxProfit
}

maxProfit(input)