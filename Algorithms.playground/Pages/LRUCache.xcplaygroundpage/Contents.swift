//: [Previous](@previous)

import Foundation

class Node {
    var key: Int
    var value: Int
    var pre: Node?
    var next: Node?
    
    init(key: Int, value: Int) {
        self.key = key
        self.value = value
    }
}

public class LRUCache {
    var capacity: Int
    var map = [Int:Node]()
    
    var head: Node?
    var end: Node?
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    func get(key: Int) -> Int {
        if let n = map[key] {
            //return value and set to front of cache
            remove(n: n)
            setHead(n: n)
            return n.value
        }
        //DNE
        return -1
    }
    
    func remove(n: Node) {
        if let p = n.pre {
            p.next = n.next
        } else {
            head = n.next
        }
        
        if let nxt = n.next {
            nxt.pre = n.pre
        } else {
            end = end?.pre
        }
    }
    
    func setHead(n: Node) {
        n.next = head
        n.pre = nil
        
        if let h = head {
            h.pre = n
        }
        
        head = n
        if end == nil {
            end = head
        }
    }
    
    func set(key: Int, value: Int) {
        if let old = map[key] {
            old.value = value
            remove(n: old)
            setHead(n: old)
        } else {
            var created: Node = Node(key: key, value: value)
            if map.count >= capacity {
                map.removeValue(forKey: end!.key)
                remove(n: end!)
                setHead(n: created)
            } else {
                setHead(n: created)
            }
            
            map[key] = created
        }
    }
}

var lruCache = LRUCache(capacity: 5)
lruCache.set(key: 1, value: 1)
lruCache.set(key: 2, value: 2)
lruCache.set(key: 3, value: 3)
lruCache.set(key: 4, value: 4)
lruCache.set(key: 5, value: 5)
var val = lruCache.get(key: 4)
lruCache.set(key: 6, value: 6)
lruCache.get(key: 1)