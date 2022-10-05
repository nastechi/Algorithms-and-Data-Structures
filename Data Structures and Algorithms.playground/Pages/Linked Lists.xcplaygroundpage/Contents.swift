import Foundation

// Here i'm practicing linked lists.
// The implementaion lays in the /Sources folder

let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)

node1.next = node2
node2.next = node3

print(node1)

// push
var list = LinkedList<Int>()
list.push(4)
list.push(5)
list.push(6)

print(list)

// append
var list2 = LinkedList<Int>()
list2.append(7)
list2.append(8)
list2.append(9)

print(list2)

// insert
var middleNode = list.node(at: 1)!
for number in 1...3 {
    middleNode = list.insert(number, after: middleNode)
}
print(list)

// pop
let poppedValue = list.pop()
print("After popping list: \(list)")
print("Popped value: \(poppedValue!)")

// removeLast
var removedValue = list.removeLast()
print("After removing the last item: \(list)")
print("removed item: \(removedValue!)")

// remove after
let index = 2
let node = list.node(at: index - 1)!
removedValue = list.remove(after: node)

print("After removing at index \(index): \(list)")
print("Removed value: \(removedValue!)")

// usage of collection
var list3 = LinkedList<Int>()
for i in 0...9 {
    list3.append(i)
}
print("List: \(list3)")
print("First element: \(list3[list3.startIndex])")
print("Array containing first 3 elements: \(Array(list3.prefix(3)))")
print("Array containing last 3 elements: \(Array(list3.suffix(3)))")

let sum = list3.reduce(0, +)
print("Sum of all values: \(sum)")


// Challenge 1: Print in reverse
var list4 = LinkedList<Int>()
for num in 1...5 {
    list4.append(num)
}
print(list4)

func reverse<T>(list: LinkedList<T>) {
    for counter in 0...list.count {
        if let nodeValue = list.node(at: list.count - counter)?.value {
            print(nodeValue)
        }
    }
}

reverse(list: list4)

// Challenge 2: Find the middle node
print(list4)

func findMiddleNode<T>(list: LinkedList<T>) -> Node<T>? {
    let middleIndex = list.count / 2
    return list.node(at: middleIndex)
}

if let middleNode = findMiddleNode(list: list4) {
    print(middleNode.value)
}

// Challenge 3: Merge two lists
var list5 = LinkedList<Int>()
for num in 1...3 {
    list5.append(num)
}

var list6 = LinkedList<Int>()
for num in 4...6 {
    list6.append(num)
}

func mergeLists<T>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
    listOne.tail?.next = listTwo.head
    return listOne
}

print(mergeLists(listOne: list5, listTwo: list6))
print(list5) // First passed list IS the merged list

// Doubly Linked List

var doublyList = DoublyLinkedList<Int>()
doublyList.push(1)
doublyList.push(2)
doublyList.push(3)
doublyList.append(4)
doublyList.append(5)
doublyList.append(6)

doublyList.node(at: 5)?.previous?.value
