//: [Previous](@previous)

import Foundation

class BSTNode {
    let value: Int
    var leftChild: BSTNode?
    var rightChild: BSTNode?
    init(value: Int, leftChild: BSTNode?, rightChild: BSTNode?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

func inorderTraversal(head: BSTNode?) -> [Int] {

    //var root = head
    var arr = [Int]()
    //arr.append((head?.value)!)
    helper(node: head, arr: &arr)
    
    return arr
}

func helper(node: BSTNode?, arr: inout [Int]) {

    print(node?.leftChild)
    if node?.leftChild != nil {
        helper(node: node?.leftChild, arr: &arr)
    }
    arr.append((node?.value)!)

    if node?.rightChild != nil {
        helper(node: node?.rightChild, arr: &arr)
    }

}

var node4 = BSTNode(value: 3, leftChild: nil, rightChild: nil)                        //99
var node3 = BSTNode(value: 3, leftChild: nil, rightChild: nil)                  //1         2
var node2 = BSTNode(value: 2, leftChild: nil, rightChild: node4)            //3    nil  nil    4
var node1 = BSTNode(value: 1, leftChild: node3, rightChild: nil)
var root = BSTNode(value: 1, leftChild: nil, rightChild: node2)

print(inorderTraversal(head: root))
