import Foundation

func binarySearch(array: [Int], target: Int) -> Bool {
    
    guard !array.isEmpty else { return false }
    
    let lastIndex = array.count - 1
    let middleIndex = lastIndex / 2
    let middleValue = array[middleIndex]
    
    guard target >= array[0], target <= array[lastIndex] else { return false }
    
    print(middleValue)
    
    if target < middleValue {
        return binarySearch(array: Array(array[0..<middleIndex]), target: target)
    } else if target > middleValue {
        return binarySearch(array: Array(array[middleIndex + 1...lastIndex]), target: target)
    } else if target == middleValue {
        return true
    }
    return false
}

print(binarySearch(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], target: 12))
