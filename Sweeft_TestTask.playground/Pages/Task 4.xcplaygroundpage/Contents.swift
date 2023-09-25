// TASK 4

func countWays(n: Int, steps: [Int]) -> Int {
    let modifiedSteps = [1] + steps + [1]

    func possibleWaysFromBoard(index: Int) -> Int {
        if index > n + 1 {
            return 0
        }
        if modifiedSteps[index] == 0 {
            return 0
        }
        if index == n + 1 {
            return 1
        }
        return possibleWaysFromBoard(index: index + 1) + possibleWaysFromBoard(index: index + 2)
    }

    return possibleWaysFromBoard(index: 0)
}

// DEMO:
print(countWays(n: 3, steps: [0, 1, 0])) // 1
print(countWays(n: 4, steps: [0, 1, 1, 0])) // 1
print(countWays(n: 5, steps: [1, 1, 0, 1, 1])) // 4
print(countWays(n: 5, steps: [1, 0, 0, 1, 1])) // 0
