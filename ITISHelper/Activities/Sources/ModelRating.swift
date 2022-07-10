import Foundation
import UIKit


class ModelRating {
    var arrayOfRating = [Rating]()
    
    func setUpTopTenRating() {
        let student1 = Rating(number: "1.", studentFIO: "Шорин Сергей", points: "215.2")
        let student2 = Rating(number: "2.", studentFIO: "Голубева Ксения", points: "213.0")
        let student3 = Rating(number: "3.", studentFIO: "Талова Олеся", points: "206.6")
        let student4 = Rating(number: "4.", studentFIO: "Латипова Рухшона", points: "204.8")
        let student5 = Rating(number: "5.", studentFIO: "Нигметзянова Лилия", points: "199.0")
        let student6 = Rating(number: "6.", studentFIO: "Мухаев Ильдар", points: "196.4")
        let student7 = Rating(number: "7.", studentFIO: "Сабирзянов Булат", points: "196.2")
        let student8 = Rating(number: "8.", studentFIO: "Грачёв Валентин", points: "196.0")
        let student9 = Rating(number: "9.", studentFIO: "Яковлева Лада", points: "194.6")
        let student10 = Rating(number: "10.", studentFIO: "Шайхулова Раиля", points: "190.2")
        
        let space = Rating(number: ". . .", studentFIO: "", points: "")
        let studentX = Rating(number: "X.", studentFIO: "Зинатуллин Ришат", points: "Y")
        
        arrayOfRating.append(student1)
        arrayOfRating.append(student2)
        arrayOfRating.append(student3)
        arrayOfRating.append(student4)
        arrayOfRating.append(student5)
        arrayOfRating.append(student6)
        arrayOfRating.append(student7)
        arrayOfRating.append(student8)
        arrayOfRating.append(student9)
        arrayOfRating.append(student10)
        arrayOfRating.append(space)
        arrayOfRating.append(studentX)
    }
}

