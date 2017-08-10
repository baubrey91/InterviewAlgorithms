import Foundation


print("h")
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

let ll1 = ListNode(2)
ll1.next?.val = 4
ll1.next?.next?.val = 3

let ll2 = ListNode(5)
ll2.next?.val = 6
ll2.next?.next?.val = 4

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    //let result = ListNode()

    while(l1 != nil && l2 != nil) {
        print(l1?.val)
        print(l2?.val)
        l1?.next = l1?.next?.next
        l2?.next = l2?.next?.next
    }
    return nil
}

print("hello")
addTwoNumbers(ll1, ll2)
