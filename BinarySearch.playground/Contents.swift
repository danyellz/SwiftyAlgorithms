
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

let arr = [1,2,3,4,5]

dynamicSearch(array: arr, search: 4)