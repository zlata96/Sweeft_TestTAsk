// TASK 2

func sumOfDigits(start: Int, end: Int) -> Int {
    var totalSum = 0
    var startPosition: Int
    var endPosition: Int
    if start < end {
        startPosition = start
        endPosition = end
    } else {
        startPosition = end
        endPosition = start
    }

    for number in startPosition...endPosition {
        var tempNumber = number
        while tempNumber > 0 {
            totalSum += tempNumber % 10
            tempNumber /= 10
        }
    }
    return totalSum
}

// DEMO:
print(sumOfDigits(start: 7, end: 8))   // 15
print(sumOfDigits(start: 17, end: 20)) // 29
print(sumOfDigits(start: 10, end: 12)) // 6
print(sumOfDigits(start: 190, end: 190)) // 1
print(sumOfDigits(start: -190, end: 190)) // 1

