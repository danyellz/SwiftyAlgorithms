
/*
     10
     /\
    8  30
   /\  /\
  5 20 6 31
*/


final class Node<T> {
    
    var value: T
    var leftBranch: Node<T>?
    var rightBranch: Node<T>?
    
    init(left: Node<T>?, right: Node<T>?, value: T) {
        leftBranch = left
        rightBranch = right
        self.value = value
    }
}

final class Tree<T> {

    func treeSort<T: Equatable>(node: Node<T>?, searchVal: T) -> Bool {
        
        guard node != nil else {
            return false
        }

        if node?.value == searchVal {
            return true
        } else {
            return treeSort(node: node?.leftBranch, searchVal: searchVal) || treeSort(node: node?.rightBranch, searchVal: searchVal)
        }
        
        /*
         NOTE:
         - This solution is faster, but assumes that all left nodes are decreasing from their parent,
         while right nodes are increasing in value. (e.g. a valid binary search tree)
         */
        
//        else if (searchVal < node?.value) {
//            return searchTree(node: node?.leftBranch, searchVal: searchVal)
//        } else {
//            return searchTree(node: node?.rightBranch, searchVal: searchVal)
//        }
    }
}



//Right nodes
let sixNode: Node<Int> = Node<Int>(left: nil, right: nil, value: 6)
let thirtyOneNode = Node<Int>(left: nil, right: nil, value: 31)
let thirtyNode = Node<Int>(left: sixNode, right: thirtyOneNode, value: 30)

//Left nodes
let fiveNode = Node<Int>(left: nil, right: nil, value: 5)
let twentyNode = Node<Int>(left: nil, right: nil, value: 20)
let eightNode = Node<Int>(left: fiveNode, right: twentyNode, value: 8)

//First node
let tenNode = Node<Int>(left: eightNode, right: thirtyNode, value: 10)

//MARK: - Driver

let searchTree = Tree<Int>()
searchTree.treeSort(node: tenNode, searchVal: 31)


