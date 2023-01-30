import Foundation

// Write a function that will calculate either the length of the circle or the perimeter of the square, based on the input arguments.
// The function will get a letter an a number. The letter represents geometric shape: "s" is a square, "c" is a circle.
// In the "s" case the number is the length of square's side. Otherwise the number is circle's raduis.
// You can only use the arithemic operators and the comparison operator. Do not use if-else structures.

func getShapeCharacterictic(shape: String, number: Double) -> Double {
    var result = 0.0
    result = Double((shape == "s").intValue) * number * 4 + Double((shape == "c").intValue) * 2 * Double.pi * number
    return result
}

extension Bool {
    var intValue: Int {
        return self ? 1 : 0
    }
}

print(getShapeCharacterictic(shape: "s", number: 5))
print(getShapeCharacterictic(shape: "c", number: 5))


// Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
// If target is not found in the array, return [-1, -1].
// You must write an algorithm with O(log n) runtime complexity.

func getFirstAndLastPositions(inArray nums: [Int], target: Int) -> [Int] {
    var result = [Int]()
    
    for i in 0..<nums.count {
        if nums[i] == target {
            if result.isEmpty {
                result.append(i)
                result.append(i)
            } else {
                result[1] = i
            }
        }
    }
    if result.isEmpty {
        return [-1, -1]
    }
    return result
}

print(getFirstAndLastPositions(inArray: [0, 0, 0, 0, 1, 1, 1], target: 0))

// There is an integer array nums sorted in ascending order (with distinct values).
// Prior to being passed to your function, nums is possibly rotated at an unknown pivot index k (1 <= k < nums.length) such that the resulting array is [nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]] (0-indexed). For example, [0,1,2,4,5,6,7] might be rotated at pivot index 3 and become [4,5,6,7,0,1,2].
// Given the array nums after the possible rotation and an integer target, return the index of target if it is in nums, or -1 if it is not in nums.

func getPosition(inArray nums: [Int], target: Int) -> Int {
    
    for i in 0..<nums.count {
        if nums[i] == target {
            return i
        }
    }
    return -1
}

// You are given an m x n integer matrix matrix with the following two properties:
// Each row is sorted in non-decreasing order.
// The first integer of each row is greater than the last integer of the previous row.
// Given an integer target, return true if target is in matrix or false otherwise.
// You must write a solution in O(log(m * n)) time complexity.

let matrix = [[1,3,5,7], [10,11,16,20], [23,30,34,60]]

func isInMatrix(_ matrix: [[Int]], target: Int) -> Bool {
    
    guard !matrix.isEmpty else { return false }
    
    
    let lastMatrixIndex = matrix.count - 1
    let middleMatrixIndex = lastMatrixIndex / 2
    
    guard target >= matrix[0][0], target <= matrix[lastMatrixIndex].last! else {
        return false
    }
    
    guard !matrix[middleMatrixIndex].isEmpty else { return false }
    
    if target < matrix[middleMatrixIndex][0] {
        return isInMatrix(Array(matrix[0..<middleMatrixIndex]), target: target)
    } else if target > matrix[middleMatrixIndex].last! {
        return isInMatrix(Array(matrix[middleMatrixIndex + 1...lastMatrixIndex]), target: target)
    } else if target >= matrix[middleMatrixIndex][0], target <= matrix[middleMatrixIndex].last! {
        return binarySearch(matrix[middleMatrixIndex], target: target)
    }
    return false
}

func binarySearch(_ array: [Int], target: Int) -> Bool {
    
    guard !array.isEmpty else { return false }
    
    let lastIndex = array.count - 1
    let middleIndex = lastIndex / 2
    let middleValue = array[middleIndex]
    
    guard target >= array[0], target <= array[lastIndex] else { return false }
    
    if target < middleValue {
        return binarySearch(Array(array[0..<middleIndex]), target: target)
    } else if target > middleValue {
        return binarySearch(Array(array[middleIndex + 1...lastIndex]), target: target)
    } else if target == middleValue {
        return true
    }
    return false
}

print(isInMatrix(matrix, target: 11))
