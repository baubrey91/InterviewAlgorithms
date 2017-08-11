
import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

var head = ListNode(1)
head.next = ListNode(2)
head.next!.next = ListNode(2)

print(head.val)
print(head.next!.val)
print(head.next!.next!.val)

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    
    var current = head
    
    while (current != nil && current?.next != nil) {
        if current?.val == current?.next?.val {
            current?.next = current?.next?.next

        } else {
            current = current?.next
        }
    }
    return head
}

let newLL = deleteDuplicates(head)

print(newLL!.val)
print(newLL!.next!.val)
print(newLL!.next!.next?.val)


