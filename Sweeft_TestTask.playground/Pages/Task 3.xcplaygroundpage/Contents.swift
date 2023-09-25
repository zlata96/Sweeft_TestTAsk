// TASK 3
func isProperly(sequence: String) -> Bool {
    var stack: [Character] = []
    if sequence.isEmpty {
        return false
    } else {
        for character in sequence {
            switch character {
            case "(":
                stack.append(character)
            case ")":
                guard !stack.isEmpty else { return false }
                stack.removeLast()
            default:
                guard !stack.isEmpty else { return false }
            }
        }
        return stack.isEmpty
    }
}

// DEMO:
print(isProperly(sequence: "(()())"))  // true
print(isProperly(sequence: ")(()"))    // false
print(isProperly(sequence: "(()())(")) // false
print(isProperly(sequence: "dsd")) // false
print(isProperly(sequence: "")) // false
