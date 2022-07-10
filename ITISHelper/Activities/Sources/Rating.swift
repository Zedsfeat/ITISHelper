import Foundation
import UIKit


class Rating: NSObject {
    var number: String
    var studentFIO: String
    var points: String
    
    init(number: String, studentFIO: String, points: String) {
        self.number = number
        self.studentFIO = studentFIO
        self.points = points
    }
}
