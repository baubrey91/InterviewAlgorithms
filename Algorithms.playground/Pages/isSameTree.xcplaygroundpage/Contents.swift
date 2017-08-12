//: [Previous](@previous)

import Foundation


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    
    if p == nil && q == nil {
        return true
    }
    if p == nil || q == nil || p?.val != q?.val {
        return false
    }
    return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
}

let root1 = TreeNode(10)
root1.left = TreeNode(5)
root1.left = TreeNode(15)
//root1.right?.right = TreeNode(4)

let root2 = TreeNode(10)
root2.left = TreeNode(5)
root2.left?.right = TreeNode(15)

isSameTree(root1, root2)