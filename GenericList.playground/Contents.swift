//: Playground - noun: a place where people can play

import UIKit



class Item {
    var value : Double = 0.0
    var date : NSDate = NSDate()
}

class GenericList<K:Hashable,T> {
    private var list = Dictionary<K,T>()
    
    func add(key:K, value:T) {
        self.list.updateValue(value, forKey: key)
    }
    
    func get(key:K) -> T? {
        return self.list[key]
    }
}

//class List<NSDate, Item> : GenericList<NSDate,Item> {
//    init(array:[Item]) {
//        for a in array {
//            self.add(a.date, value: a)
//        }
//    }
//}

let items = [Item]()
var l = GenericList<NSDate,Item>()
let now = NSDate()
let item = Item()
l.add(now, value: item)
if let itemNow = l.get(now) {
    println("now : \(itemNow)")
}
else {
    println("nope")
}
