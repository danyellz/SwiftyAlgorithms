//: Playground - noun: a place where people can play

class Node<T> {
    var value: T
    var next: Node<T>?
    
    init(value: T) {
        self.value = value
    }
}

class Stack<T> {
    
    var top: Node<T>?
    
    func push(_ value: T) {
        let olStackTop = top
        top = Node(value: value)
        top?.next = olStackTop
    }
    
    func pop() -> T? {
        let prevTop = top
        top = top?.next
        return prevTop?.value
        
    }
}


let stack = Stack<Int>()
stack.push(3)
stack.push(10)
stack.pop()

print(stack.top?.value)