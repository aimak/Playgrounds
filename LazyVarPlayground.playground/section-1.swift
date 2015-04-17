// This playground is an experiment about lazy initializing in Swift.

import UIKit
class List : NSObject {
    lazy var strings:[String]? = {
        return ["first", "second"]
        }()
    
    override init() {
        
    }
    
    func hello() -> String {
        if let clubs = self.strings {
            return clubs[0];
        }
        return "nope"
    }
    
    func reset() {
        self.strings = nil
    }
}

let list = List()
list.hello()
list.reset()
list.hello() // after being reset, the lazy strings property is not set back.

