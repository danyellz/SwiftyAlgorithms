
// MARK: - Dynamic or iterative

public func dynamicSearch<T: Comparable >(array: [T], search: T) -> Bool? {
    
    var bottomIndex = 0
    var topIndex = array.count
    
    while bottomIndex < topIndex {
        
        let midIndex = bottomIndex + (topIndex - bottomIndex) / 2
        
        // Set a base case so that when the centermost value == searched, return true.
        if array[midIndex] == search {
            return true
        } else if array[midIndex] > search {
            topIndex = midIndex - 1
        } else if array[midIndex] < search {
            bottomIndex = midIndex - 1
        }
    }
    
    return nil
}

public func recursiveSearch<T: Comparable >(array: [T], search: T, range: Range<Int>) -> Bool? {
    
    let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
    
    guard range.lowerBound != range.upperBound else {
        return false
    }
    
    if array[midIndex] == search {
        return true
    } else if array[midIndex] > search {
        return recursiveSearch(array: array, search: search, range: range.lowerBound..<midIndex - 1)
    } else if array[midIndex] < search {
        return recursiveSearch(array: array, search: search, range: midIndex + 1..<range.upperBound)
    }
    
    return false
}

let arr = [1,2,3,4,5]

recursiveSearch(array: arr, search: 3, range: 0..<arr.count)
dynamicSearch(array: arr, search: 4)