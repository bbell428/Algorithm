# 리트코드 706번 - Design HashMap

```swift
class MyHashMap {
    var map: [(Int, Int)]
    
    init() {
        map = []
    }
    
    func put(_ key: Int, _ value: Int) {
        for i in 0..<map.count {
            if map[i].0 == key {
                map[i].1 = value
                return
            }
        }
        map.append((key, value))
    }
    
    func get(_ key: Int) -> Int {
        for tuple in map {
            if key == tuple.0 {
                return tuple.1
            }
        }
        return -1
    }
    
    func remove(_ key: Int) {
        map.removeAll { $0.0 == key }
    }
}

let obj = MyHashMap()
obj.put(1, 1)
obj.put(2, 2)
let get_1: Int = obj.get(1)
let get_2: Int = obj.get(3)
obj.put(2, 1)
let get_3: Int = obj.get(2)
obj.remove(2)
let get_4: Int = obj.get(2)
print("get_1: \(get_1)")
print("get_2: \(get_2)")
print("get_3: \(get_3)")
print("get_4: \(get_4)")
```
