import Foundation
import UIKit


class ModelMySubjects {
    var arrayOfSubjects = [MySubjects]()
    
    func setUpSubjects() {
        let discreteMathematics = MySubjects(name: "Дискретная математика")
        let mathematicalAnalysis = MySubjects(name: "Математический анализ")
        let informaticsAndProgramming = MySubjects(name: "Информатика и программирование")
        let algorithmsAndDataStructures = MySubjects(name: "Алгоритмы и структуры данных")
        let algebraAndGeometry = MySubjects(name: "Алгебра и геометрия")
        
        arrayOfSubjects.append(discreteMathematics)
        arrayOfSubjects.append(mathematicalAnalysis)
        arrayOfSubjects.append(informaticsAndProgramming)
        arrayOfSubjects.append(algorithmsAndDataStructures)
        arrayOfSubjects.append(algebraAndGeometry)
    }
}
