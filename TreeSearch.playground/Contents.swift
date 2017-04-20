// MARK: - Objects

/*
     10
     /\
   20  30
   /\  /\
   5 7 8 12
 */

class Node {
    var searchVal: Int
    var leftBranch: Node?
    var rightBranch: Node?
    
    init(left: Node, right: Node, search: Int) {
        leftBranch = left
        rightBranch = right
        searchVal = search
    }
}

func searchTree(node: Node?, searchVal: Int) -> Bool {
    
    guard node!.searchVal != searchVal else {
        return true
    }

    return searchTree(node: node!.leftBranch, searchVal: searchVal) || searchTree(node: node!.rightBranch, searchVal: searchVal)
    
    return false
}


