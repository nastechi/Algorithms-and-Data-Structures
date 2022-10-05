// Here i'm practicing stacks.
// The implementaion lays in the /Sources folder

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)

print(stack)

if let poppedElement = stack.pop() {
    print("popped: \(poppedElement)")
}

print(stack)

let array = ["A", "B", "C", "D"]
var secondStack = Stack(array)
print("Second stack using initialazer: \n\(secondStack)")

// Balanced paretheses challenge
func checkParantheses(line: String) -> Bool {
    var stack = Stack<Character>()
    for letter in line {
        if letter == "(" {
            stack.push(letter)
        } else if letter == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }
    return stack.isEmpty
}

print(checkParantheses(line: "(Hello!)(world"))
