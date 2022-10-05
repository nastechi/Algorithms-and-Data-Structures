import Foundation

public class Node<Value> {
    public var value: Value
    public var next: Node?
    public var previous: Node?
    
    public init(value: Value, next: Node? = nil, previous: Node? = nil) {
        self.value = value
        self.next = next
        self.previous = previous
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}
