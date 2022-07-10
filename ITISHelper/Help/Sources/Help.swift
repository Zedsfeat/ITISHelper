import Foundation
import UIKit


class MyGroupmates: NSObject {
    var studentFIO: String
    var number: String
    
    init(studentFIO: String, number: String) {
        self.studentFIO = studentFIO
        self.number = number
    }
}

class Leaders: NSObject {
    var leader: String
    var numberOfGroup: String
    
    init(leader: String, numberOfGroup: String) {
        self.leader = leader
        self.numberOfGroup = numberOfGroup
    }
}
