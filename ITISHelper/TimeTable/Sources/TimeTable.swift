import Foundation
import UIKit


class TimeTable: NSObject {
    var time: String
    var room: String
    var subject: String
    var teacher: String
    
    init(time: String, room: String, subject: String, teacher: String) {
        self.time = time
        self.room = room
        self.subject = subject
        self.teacher = teacher
    }
}
