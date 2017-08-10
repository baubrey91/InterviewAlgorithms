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

let root = TreeNode(5)
root.left = TreeNode(2)
root.right = TreeNode(2)
root.right?.right = TreeNode(4)



func isSymettric(_ root: TreeNode?) -> Bool {
    return isMirror(root, root)
    
}

func isMirror(_ node1: TreeNode?, _ node2: TreeNode?) -> Bool {
    
    if node1 == nil && node2 == nil {
        return true
    }
    
    if node1?.val == node2?.val && node1 != nil && node2 != nil {
        return isMirror(node1?.left, node2?.right) && isMirror(node1?.right, node2?.left)
    }
    
    return false
}


print(isSymettric(root))