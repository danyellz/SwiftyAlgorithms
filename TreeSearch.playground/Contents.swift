
/*
     10
     /\
    8  30
   /\  /\
  5 20 6 31
*/


// MARK: - Objects

class Node {
    var value: Int
    var leftBranch: Node?
    var rightBranch: Node?
    
    init(left: Node?, right: Node?, value: Int) {
        leftBranch = left
        rightBranch = right
        self.value = value
    }
}

//Right nodes
let sixNode = Node(left: nil, right: nil, value: 6)
let thirtyOneNode = Node(left: nil, right: nil, value: 31)
let thirtyNode = Node(left: sixNode, right: thirtyOneNode, value: 30)

//Left nodes
let fiveNode = Node(left: nil, right: nil, value: 5)
let twentyNode = Node(left: nil, right: nil, value: 20)
let eightNode = Node(left: fiveNode, right: twentyNode, value: 8)

//First node
let tenNode = Node(left: eightNode, right: thirtyNode, value: 10)

func searchTree(node: Node?, searchVal: Int) -> Bool {
    
    print(node?.value, searchVal)
    
    guard node != nil else {
        return false
    }
    
    if node?.value == searchVal {
        return true
    }
        
    /*NOTE: - This solution assumes that all left nodes are decreasing from their parent,
     *while right nodes are increasing in value.
     */
//    else if (searchVal < node!.value) {
//        return searchTree(node: node?.leftBranch, searchVal: searchVal)
//    } else {
//        return searchTree(node: node?.rightBranch, searchVal: searchVal)
//    }
    
    /*
     *NOTE: - LogN solution. Indifferent to increasing/decreasing values.
     *Speed improvement above.
     */
    else {
        return searchTree(node: node?.leftBranch, searchVal: searchVal) || searchTree(node: node?.rightBranch, searchVal: searchVal)
    }
    
    return false
}

searchTree(node: tenNode, searchVal: 20)


