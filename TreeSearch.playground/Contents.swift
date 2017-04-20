// MARK: - Objects

/*
     10
     /\
   20  30
   /\  /\
   5 7 8 12
 */

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

let eightNode = Node(left: nil, right: nil, value: 8)
let twelveNode = Node(left: nil, right: nil, value: 12)

//Right nodes
let thirtyNode = Node(left: eightNode, right: twelveNode, value: 30)
let sevenNode = Node(left: nil, right: nil, value: 7)

//Left nodes
let fiveNode = Node(left: nil, right: nil, value: 5)
let twentyNode = Node(left: fiveNode, right: sevenNode, value: 20)

//First node
let tenNode = Node(left: twentyNode, right: thirtyNode, value: 10)

func searchTree(node: Node?, searchVal: Int) -> Bool {
    
    guard node != nil else {
        return false
    }
    
    if node?.value == searchVal {
        return true
    }
    
//LogN solution. Improvement above.
//    } else {
//        return searchTree(node: node?.leftBranch, searchVal: searchVal) || searchTree(node: node?.rightBranch, searchVal: searchVal)
//    }
    
}

searchTree(node: tenNode, searchVal: 12)


