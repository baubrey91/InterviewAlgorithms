import Foundation

struct Node {
    let value: Int
    var next: Node?
    init(value: Int) {
        self.value = value
        //self.next = next
    }
}

//var tresNode = Node(value: 3, next: nil)
//var dosNode = Node(value: 2, next: tresNode)
//var unoNode = Node(value: 1, next: dosNode)

var head = Node(value: 1)
var nodeTwo = Node(value: 2)
var nodeThree = Node(value: 3)

head.next = nodeTwo
nodeTwo.next = nodeThree
nodeThree.next = nodeTwo


func hasCycle(head: Node) -> Bool {
    var fast = head
    var slow = head
    
    while fast.next != nil && fast.next?.next != nil {
        fast = fast.next!.next!
        slow = slow.next!
        if slow == fast {
            return true
        }
    }
    
    return false
}

hasCycle(head: head)
