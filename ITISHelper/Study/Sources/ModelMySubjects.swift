import Foundation
import UIKit


class ModelMySubjects {
    var arrayOfSubjects = [MySubjects]()
    
    func setUpSubjects() {
        let discreteMathematics = MySubjects(name: "Дискретка")
        let mathematicalAnalysis = MySubjects(name: "Матан")
        let informaticsAndProgramming = MySubjects(name: "Инфа")
        let algorithmsAndDataStructures = MySubjects(name: "АиСД")
        let algebraAndGeometry = MySubjects(name: "Алгем")
        
        arrayOfSubjects.append(discreteMathematics)
        arrayOfSubjects.append(mathematicalAnalysis)
        arrayOfSubjects.append(informaticsAndProgramming)
        arrayOfSubjects.append(algorithmsAndDataStructures)
        arrayOfSubjects.append(algebraAndGeometry)
    }
}
