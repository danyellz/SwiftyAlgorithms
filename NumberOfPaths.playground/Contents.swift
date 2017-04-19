//: Playground - noun: a place where people can play

// NOTE: - The following functionality assumes a two-dimensional data object is has an identical number of rows and colums

//Count all possible paths from top-left to of MxN matrix

public func arrayFromMandN(m: Int, n: Int) -> [[Int]]{
    var rowArr = [[Int]()]

    for row in 0..<m {
        rowArr.append([])
        
        for _ in 0..<n {
            rowArr[row].append(1)
        }
    }
    
    rowArr.popLast()
    
    return rowArr
}

// MARK: - Find number of paths dynamically

public func numOfPathsForMxNDynamic(rowArr: inout [[Int]] ) -> Int {
    
    for i in 0..<rowArr.count {
        rowArr[0][i] = 1
    }
    
    for j in 0..<rowArr.count {
        rowArr[j][0] = 1
    }
  
    for index in 1..<rowArr.count {
        for nIndex in 1..<rowArr.count {
            rowArr[index][nIndex] = rowArr[index - 1][nIndex] + rowArr[index][nIndex - 1]
        }
    }
    
    return rowArr[rowArr.count - 1][rowArr.count - 1]
    
}

// MARK: - Find number of paths recursively

public func numOfPathsForMxNRecursive(arr: inout [[Int]], r: Int, c: Int) -> Int {
    
    if (r == arr.count - 1 || c == arr.count - 1) {
        return 1
    }
    
    return numOfPathsForMxNRecursive(arr: &arr, r: r + 1, c: c) + numOfPathsForMxNRecursive(arr: &arr, r: r, c: c + 1)
}

var arr = arrayFromMandN(m: 4, n: 4)

print(numOfPathsForMxNDynamic(rowArr: &arr))
print(numOfPathsForMxNRecursive(arr: &arr, r: 0, c: 0))

