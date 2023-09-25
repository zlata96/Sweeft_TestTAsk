// TASK 5

func calculateZeros(in number: Int) -> Int {
    var count = 0
    var currentDivisor = 5

    while number / currentDivisor > 0 {
        count += number / currentDivisor
        currentDivisor *= 5
    }

    return count
}

// DEMO:
print(calculateZeros(in: 7))   // 1
print(calculateZeros(in: 12)) // 2
print(calculateZeros(in: 490)) // 120
print(calculateZeros(in: 0))  // 0

