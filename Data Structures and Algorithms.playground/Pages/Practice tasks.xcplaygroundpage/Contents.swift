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


// Given an integer array of size n, find all elements that appear more than n/3 times.
// You can assume that the array contains at list one major element.

func getThirdMajor(forArray array: [Int]) -> [Int] {
    var result = [Int]()
    var dictionary = [Int: Int]()
    
    for element in array {
        if dictionary[element] != nil {
            dictionary[element]! += 1
        } else {
            dictionary[element] = 1
        }
    }
    
    for (key, value) in dictionary {
        if value > array.count / 3 {
            result.append(key)
        }
    }
    return result
}

print(getThirdMajor(forArray: [1, 0, 1, 1, 1]))
print(getThirdMajor(forArray: [0, 0, 0, 0, 0]))
print(getThirdMajor(forArray: [1, 2, 3, 4, 4, 4, 4]))
print(getThirdMajor(forArray: [1, 3, 3, 3, 4, 4, 4]))


// Given two integer arrays, write a function to compute their intersection.
// Each element in the result must be unique.

func intersect(_ firstArray: [Int], secondArray: [Int]) -> [Int] {
    var result = [Int]()
    
    guard !firstArray.isEmpty, !secondArray.isEmpty else { return result }
    
    for element in firstArray {
        guard !result.contains(element) else { continue }
        for i in 0..<secondArray.count {
            if element == secondArray[i] {
                result.append(element)
                break
            }
        }
    }
    return result
}

print(intersect([1, 2, 3, 4, 5, 6, 7], secondArray: [2, 5]))
print(intersect([2, 5], secondArray: [1, 2, 3, 4, 5, 6, 7]))
print(intersect([], secondArray: [1, 2, 3, 4, 5, 6, 7]))
print(intersect([2, 5, 7, 10, 13, 25, 67, 68], secondArray: [1, 3, 7, 11, 13, 43, 45, 67]))
print(intersect([2, 2, 2, 2, 3, 3, 3, 5], secondArray: [2, 2, 2, 3, 3]))


// Given an array of integers, find if the array contains any duplicates.

func hasDuplicates(array: [Int]) -> Bool {
    guard !array.isEmpty else { return false }
    var trackArray = [Int]()
    for element in array {
        if trackArray.contains(element) {
            return true
        } else {
            trackArray.append(element)
        }
    }
    return false
}

print(hasDuplicates(array: [1, 2, 3, 4, 5]))
print(hasDuplicates(array: [1, 2, 2, 4, 5]))


// Given an array of integers and an integer k, find out whether there are two distinct indices j and i in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.

func areAnySameElements(inArray array: [Int], insideRange k: Int) -> Bool {
    guard !array.isEmpty else { return false }
    for element in array {
        for i in 1..<k {
            if array[i] == element {
                return true
            }
        }
    }
    return false
}

print(areAnySameElements(inArray: [1, 2, 3, 4, 3], insideRange: 2))
print(areAnySameElements(inArray: [1, 0, 1, 0, 1], insideRange: 1))
