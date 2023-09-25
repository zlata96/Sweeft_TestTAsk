// TASK 1

func minSplit(amount: Int) -> Int {
    let coins = [50, 20, 10, 5, 1]
    var remainingAmount = amount
    var coinCount = 0

    for coin in coins {
        while remainingAmount >= coin {
            var numberOfCoins = remainingAmount / coin
            coinCount += numberOfCoins
            remainingAmount -= coin * numberOfCoins
        }
        if remainingAmount <= 0 {
            break
        }
    }

    return coinCount
}

// DEMO:
print(minSplit(amount: 9))  // 5
print(minSplit(amount: 26)) // 3
print(minSplit(amount: 172)) // 6

print(minSplit(amount: 10)) // 1
print(minSplit(amount: 0)) // 0
print(minSplit(amount: -10)) // 0
