import Foundation

// Given a binary array, find the maximum number of consecutive 1s in this array.

func getConsecutive(forBinaryArray array: [Int]) -> Int {
    var currentMax = 0
    var count = 0
    
    for number in array {
        if number == 1 {
            count += 1
            
            if currentMax < count {
                currentMax = count
            }
        } else {
            if count != 0 {
                count = 0
            }
        }
    }
    return currentMax
}

print(getConsecutive(forBinaryArray: [1, 1, 1, 1, 0, 1 ,1, 1]))
print(getConsecutive(forBinaryArray: [1, 1, 0, 1 ,1, 1]))
print(getConsecutive(forBinaryArray: [0, 0, 0, 0, 0, 0]))
print(getConsecutive(forBinaryArray: [1, 1, 1, 1 ,1, 1]))


// Given an array of size n, find the most frequent element.

func getMostFrequentElement<T: Hashable>(forArray array: [T]) -> T? {
    guard !array.isEmpty else {
        return nil
    }
    var dictionary = [T: Int]()
    for element in array {
        if dictionary[element] != nil {
            dictionary[element]! += 1
        } else {
            dictionary[element] = 1
        }
    }
    var maxCount = 0
    var mostFrequentElement = array[0]
    for (element, number) in dictionary {
        if number > maxCount {
            maxCount = number
            mostFrequentElement = element
        }
    }
    return mostFrequentElement
}

print(getMostFrequentElement(forArray: [1, 2, 1, 1, 1, 2])!)
print(getMostFrequentElement(forArray: [1, 2, 1, 1, 1, 2, 2, 2, 2])!)
print(getMostFrequentElement(forArray: ["Two", "One", "One", "One", "One", "One"])!)
print(getMostFrequentElement(forArray: ["Two", "Two", "Two", "Two", "Two", "Two"])!)
print(getMostFrequentElement(forArray: ["Two", "One", "Three", "Four", "Five", "Two"])!)
print(getMostFrequentElement(forArray: []) ?? "array is empty")


// Given an array of size n, find the majority element. The majority element is the element that appears more than n/2 times.
// You may assume that the array is non-empty and the majority element always exists in the array.

func getMajorityElement<T: Hashable>(forArray array: [T]) -> T {
    var majorityElement = array[0]
    var counter = 0
    
    for currentElement in array {
        if currentElement == majorityElement {
            counter += 1
        }
        else {
            counter -= 1
        }
        if counter == 0 {
            majorityElement = currentElement
            counter += 1
        }
    }
    return majorityElement
}

print(getMajorityElement(forArray: [1, 2, 1, 1, 3, 1, 2, 1, 1, 1, 1]))
print(getMajorityElement(forArray: [3, 2, 1, 1, 3, 3, 1, 2, 1, 1, 1, 1]))
print(getMajorityElement(forArray: ["Two", "One", "One", "Two", "Two", "Two", "Two", "Two", "Two", "Two", "Two", "Two"]))
