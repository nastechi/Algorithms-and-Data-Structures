// Here i'm practicing linked lists.
// My implementaion lays in the /Sources folder

import Foundation

var queue = QueueArray<String>()
queue.enqueue("Margo")
queue.enqueue("Givi")
queue.enqueue("Anastasia")
queue
queue.dequeue()
queue
queue.peek

var linkedQueue = QueueLinkedList<Int>()
linkedQueue.enqueue(1)
linkedQueue.enqueue(2)
linkedQueue.enqueue(3)
linkedQueue

// Challenge 1: Whose turn is it?
var playersQueue = QueueLinkedList<String>()
playersQueue.enqueue("Lisa")
playersQueue.enqueue("Hannah")
playersQueue.enqueue("Stephen")
playersQueue.enqueue("Phil")

func nextPlayer() -> String? {
    let nextPlayer = playersQueue.peek
    playersQueue.enqueue(nextPlayer!)
    return playersQueue.dequeue()
}

print(nextPlayer()!)
print(nextPlayer()!)
print(nextPlayer()!)
print(nextPlayer()!)
print(nextPlayer()!)
print(playersQueue)
