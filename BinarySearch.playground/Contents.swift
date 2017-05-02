
// MARK: - Dynamic or iterative

public func dynamicSearch<T: Comparable >(array: [T], search: T) -> Bool? {
    
    var bottomIndex = 0
    var topIndex = array.count
    
    while bottomIndex < topIndex {
        
        let midIndex = bottomIndex + (topIndex - bottomIndex) / 2
        
        // Set a base case so once the center index value == searched, return true.
        if array[midIndex] == search {
            return true
        } else if array[midIndex] > search {
            topIndex = midIndex - 1
        } else if array[midIndex] < search {
            bottomIndex = midIndex + 1
        } else {
            return false
        }
    }
    
    return false
}

public func refactoredDynamicSearch <T: Comparable>(array:[T] , search: T) -> Bool? {
    
    for i in 0..<array.count {
        if array[i] == search {
            return true
        }
    }
    
    return false
}

// MARK: - Recursive solution. TODO:

public func recursiveSearch<T: Comparable >(array: [T], search: T, range: Range<Int>) -> Bool? {
    
    let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
    
    guard range.lowerBound != range.upperBound else {
        return false
    }
    
    if array[midIndex] == search { // Set a base case so once the center index value == searched, return true.
        return true
    } else if array[midIndex] > search {
        return recursiveSearch(array: array,
                               search: search,
                               range: range.lowerBound..<midIndex - 1) // Decrement from the top index (middle)
    } else if array[midIndex] < search {
        return recursiveSearch(array: array,
                               search: search,
                               range: midIndex + 1..<range.upperBound) //Increment from the bottom index (middle)
    }
    
    return false
}

let intArr = [1, 8, 3, 4, 5]
let arr = ["cat", "dog", "squirrel", "person"]

recursiveSearch(array: arr, search: "person", range: 0..<arr.count)
dynamicSearch(array: intArr, search: 1)
refactoredDynamicSearch(array: intArr, search: 5)
