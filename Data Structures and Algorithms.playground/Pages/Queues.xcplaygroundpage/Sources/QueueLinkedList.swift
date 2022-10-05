import Foundation

public class QueueLinkedList<T>: Queue {
    private var list = DoublyLinkedList<T>()
    public init() {}
    
    public func enqueue(_ element: Element) -> Bool {
        list.append(element)
        return true
    }
    
    public func dequeue() -> T? {
        if let element = list.head {
            return list.remove(element)
        }
        return nil
    }
    
    public var peek: T? {
        list.first
    }
    
    public var isEmpty: Bool {
        list.isEmpty
    }
}

extension QueueLinkedList: CustomStringConvertible {
    public var description: String {
        String(describing: list)
    }
}
