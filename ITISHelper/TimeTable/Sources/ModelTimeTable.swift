import Foundation
import UIKit


var arrayDaysOfWeek = ["Понедельник", "Вторник",
                       "Среда", "Четверг", "Пятница",
                       "Суббота", "Воскресенье"]


class ModelTimeTable {
    var arrayMonday = [TimeTable]()
    var arrayTuesday = [TimeTable]()
    var arrayWednesday = [TimeTable]()
    var arrayThursday = [TimeTable]()
    var arrayFriday = [TimeTable]()
    var arraySaturday = [TimeTable]()
    var arraySunday = [TimeTable]()
    
    var arrayOfPairsPerWeek = [[TimeTable]]()
    
    func setUpWeek() {
        setUpMonday()
        setUpTuesday()
        setUpWednesday()
        setUpThursday()
        setUpFriday()
        setUpSaturday()
        setUpSunday()
        
        arrayOfPairsPerWeek.append(arrayMonday)
        arrayOfPairsPerWeek.append(arrayTuesday)
        arrayOfPairsPerWeek.append(arrayWednesday)
        arrayOfPairsPerWeek.append(arrayThursday)
        arrayOfPairsPerWeek.append(arrayFriday)
        arrayOfPairsPerWeek.append(arraySaturday)
        arrayOfPairsPerWeek.append(arraySunday)
    }
    
    func setUpMonday() {
        let firstPair = TimeTable(time: "08:30 - 10:00", room: "УНИКС", subject: "Физ-ра", teacher: "Самойленко П.М.")
        let secondPair = TimeTable(time: "10:10 - 11:40", room: "109", subject: "Алгебра и геометрия", teacher: "Арсланов М.М.")
        let thirdPair = TimeTable(time: "11:50 - 13:20", room: "1308", subject: "Информатика и программирование", teacher: "Фазулзянов А.Г.")
        let fourthPair = TimeTable(time: "14:00 - 15:30", room: "1307", subject: "Алгебра и геометрия", teacher: "Лисенков Д.С.")
        
        arrayMonday.append(firstPair)
        arrayMonday.append(secondPair)
        arrayMonday.append(thirdPair)
        arrayMonday.append(fourthPair)
    
    }
    
    func setUpTuesday() {
        let firstPair = TimeTable(time: "08:30 - 10:00", room: "108", subject: "Математический анализ", teacher: "Скворцова Г.Ш.")
        let secondPair = TimeTable(time: "10:10 - 11:40", room: "1310", subject: "Дискретная математика", teacher: "Зубков М.В.")
        let thirdPair = TimeTable(time: "11:50 - 13:20", room: "1508", subject: "Математический анализ", teacher: "Даутова Д.Н.")
        let fourthPair = TimeTable(time: "14:00 - 15:30", room: "1309", subject: "Информатика и программирование", teacher: "Фазулзянов А.Г.")
        
        arrayTuesday.append(firstPair)
        arrayTuesday.append(secondPair)
        arrayTuesday.append(thirdPair)
        arrayTuesday.append(fourthPair)
        
    }
    
    func setUpWednesday() {
        let somePair = TimeTable(time: "-", room: "-", subject: "Естественная-научная картина мира", teacher: "-")
        
        arrayWednesday.append(somePair)
    
    }
    
    func setUpThursday() {
        let firstPair = TimeTable(time: "08:30 - 10:00", room: "УНИКС", subject: "Физ-ра", teacher: "Самойленко П.М.")
        let secondPair = TimeTable(time: "10:10 - 11:40", room: "1302", subject: "Иностранный язык (английский)", teacher: "Мартынова Е.В.")
        let thirdPair = TimeTable(time: "11:50 - 13:20", room: "109", subject: "Информатика и программирование", teacher: "Абрамский М.М.")
        let fourthPair = TimeTable(time: "14:00 - 15:30", room: "1302", subject: "Иностранный язык (английский)", teacher: "Мартынова Е.В.")
        
        arrayThursday.append(firstPair)
        arrayThursday.append(secondPair)
        arrayThursday.append(thirdPair)
        arrayThursday.append(fourthPair)
        
    }
    
    func setUpFriday() {
        let firstPair = TimeTable(time: "08:30 - 10:00", room: "109", subject: "Алгоритмы и структуры данных", teacher: "Салимов Ф.И.")
        let secondPair = TimeTable(time: "10:10 - 11:40", room: "1302", subject: "Иностранный язык: (английский проф.сф.)", teacher: "Мартынова Е.В.")
        let thirdPair = TimeTable(time: "11:50 - 13:20", room: "108", subject: "Дискретная математика", teacher: "Корнеева Н.Н.")
        let fourthPair = TimeTable(time: "14:00 - 15:30", room: "1409", subject: "Иностранный язык (английский)", teacher: "Сафин Р.Н.")
        
        arrayFriday.append(firstPair)
        arrayFriday.append(secondPair)
        arrayFriday.append(thirdPair)
        arrayFriday.append(fourthPair)
        
    }
    
    func setUpSaturday() {
        let somePair = TimeTable(time: "-", room: "-", subject: "Естественная-научная картина мира", teacher: "-")
        
        arraySaturday.append(somePair)
        
    }
    
    func setUpSunday() {
        let somePair = TimeTable(time: "-", room: "-", subject: "-", teacher: "-")
        
        arraySunday.append(somePair)
        
    }
}
