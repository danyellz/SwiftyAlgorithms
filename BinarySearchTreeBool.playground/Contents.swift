
// Project to check whether a binary search tree is valid

/*
     10
     /\
    0  30
    /   \
  -5    31
*/

final class Node {
    
    var value: Double
    var leftBranch: Node?
    var rightBranch: Node?
    
    init(left: Node?, right: Node?, value: Double) {
        leftBranch = left
        rightBranch = right
        self.value = value
    }
}

final class Tree {
    
    func treeSort(newNode: Node?, searchVal: Range<Double>) -> Bool {
        
        // If no node is available, it is technically a valid tree 
        
        guard let node = newNode else {
            return true
        }
        
        // MARK: - Attributes
        
        let nodeVal = node.value
        let lower = searchVal.lowerBound
        let upper = searchVal.upperBound
        
        if node.value <= lower || node.value > upper {
            /*
             If the node is beyond the bounds, it is immediatey invalid
             */
            return false
        } else {
            /*
             If the node is within the bounds, continue on to the next node within range
             */
            return treeSort(newNode: node.leftBranch, searchVal: lower..<nodeVal) && treeSort(newNode: node.rightBranch, searchVal: nodeVal..<upper)
        }
    }
}


//Right nodes
let sixNode = Node(left: nil, right: nil, value: 6)
let thirtyOneNode = Node(left: nil, right: nil, value: 31)
let thirtyNode = Node(left: nil, right: thirtyOneNode, value: 30)

//Left nodes
let fiveNode = Node(left: nil, right: nil, value: -5)
let secondTen = Node(left: fiveNode, right: nil, value: 10)

//First node
let tenNode = Node(left: secondTen, right: thirtyNode, value: 10)

//MARK: - Driver

let searchTree = Tree()
searchTree.treeSort(newNode: tenNode, searchVal: -Double.infinity..<Double.infinity)
