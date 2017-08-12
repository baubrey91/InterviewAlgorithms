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


func isBalanced(_ root: TreeNode?) -> Bool {
    return checkHeight(root) != -1
}

private func checkHeight(_ root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }
    
    let left = checkHeight(root.left), right = checkHeight(root.right)
    
    if left == -1 || right == -1 {
        return -1
    }
    
    if abs(left - right) > 1 {
        return -1
    }
    
    return max(left, right) + 1
}

let root = TreeNode(1)
root.left = TreeNode(2)

isBalanced(root)