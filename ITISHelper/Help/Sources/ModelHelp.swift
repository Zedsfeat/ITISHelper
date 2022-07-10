import Foundation
import UIKit


class ModelHelp {
    var arrayOfMyGroupmates = [MyGroupmates]()
    var arrayOfLeaders = [Leaders]()
    
    func setUpMyGroup() {
        let student1 = MyGroupmates(studentFIO: "Ахметзянов Алмаз Азатович", number: "1.")
        let student2 = MyGroupmates(studentFIO: "Ведерникова Дарья Валерьевна", number: "2.")
        let student3 = MyGroupmates(studentFIO: "Гарипов Шамиль Ленарович", number: "3.")
        let student4 = MyGroupmates(studentFIO: "Девличаров Егор Тимурович", number: "4.")
        let student5 = MyGroupmates(studentFIO: "Диянов Амир Радикович", number: "5.")
        let student6 = MyGroupmates(studentFIO: "Евстратова Дарья Денисовна", number: "6.")
        let student7 = MyGroupmates(studentFIO: "Зинатуллин Ришат Рафисович", number: "7.")
        let student8 = MyGroupmates(studentFIO: "Зорин Виталий Иванович", number: "8.")
        let student9 = MyGroupmates(studentFIO: "Иванов Егор Русланович", number: "9.")
        let student10 = MyGroupmates(studentFIO: "Камалов Нияз Наилевич", number: "10.")
        let student11 = MyGroupmates(studentFIO: "Кирасиров Данис Ильясович", number: "11.")
        let student12 = MyGroupmates(studentFIO: "Липперт Марк Дмитриевич", number: "12.")
        let student13 = MyGroupmates(studentFIO: "Лукина Сильвина Юрьевна", number: "13.")
        let student14 = MyGroupmates(studentFIO: "Марьин Никита Сергеевич", number: "14.")
        let student15 = MyGroupmates(studentFIO: "Мингазов Марат Фанисович", number: "15.")
        let student16 = MyGroupmates(studentFIO: "Моисеенко Дмитрий Сергеевич", number: "16.")
        let student17 = MyGroupmates(studentFIO: "Мышливец Даниил Ильнурович", number: "17.")
        let student18 = MyGroupmates(studentFIO: "Новак Сергей Сергеевич", number: "18.")
        let student19 = MyGroupmates(studentFIO: "Сабиров Булат Альбертович", number: "19.")
        let student20 = MyGroupmates(studentFIO: "Сергеев Ростислав Александров", number: "20.")
        let student21 = MyGroupmates(studentFIO: "Талова Олеся Александровна", number: "21.")
        let student22 = MyGroupmates(studentFIO: "Халилов Булат Ришатович", number: "22.")
        let student23 = MyGroupmates(studentFIO: "Хамидуллов Ринат Ришатович", number: "23.")
        let student24 = MyGroupmates(studentFIO: "Харин Ильдар Андреевич", number: "24.")
        let student25 = MyGroupmates(studentFIO: "Шакуров Амир Азатович", number: "25.")
        let student26 = MyGroupmates(studentFIO: "Якупов Данил Салаватович", number: "26.")
        
        arrayOfMyGroupmates.append(student1)
        arrayOfMyGroupmates.append(student2)
        arrayOfMyGroupmates.append(student3)
        arrayOfMyGroupmates.append(student4)
        arrayOfMyGroupmates.append(student5)
        arrayOfMyGroupmates.append(student6)
        arrayOfMyGroupmates.append(student7)
        arrayOfMyGroupmates.append(student8)
        arrayOfMyGroupmates.append(student9)
        arrayOfMyGroupmates.append(student10)
        arrayOfMyGroupmates.append(student11)
        arrayOfMyGroupmates.append(student12)
        arrayOfMyGroupmates.append(student13)
        arrayOfMyGroupmates.append(student14)
        arrayOfMyGroupmates.append(student15)
        arrayOfMyGroupmates.append(student16)
        arrayOfMyGroupmates.append(student17)
        arrayOfMyGroupmates.append(student18)
        arrayOfMyGroupmates.append(student19)
        arrayOfMyGroupmates.append(student20)
        arrayOfMyGroupmates.append(student21)
        arrayOfMyGroupmates.append(student22)
        arrayOfMyGroupmates.append(student23)
        arrayOfMyGroupmates.append(student24)
        arrayOfMyGroupmates.append(student25)
        arrayOfMyGroupmates.append(student26)
    }
    
    func setUpLeaders() {
        let leader1 = Leaders(leader: "Пудова Анжела", numberOfGroup: "11-101")
        let leader2 = Leaders(leader: "Степкин Даниил", numberOfGroup: "11-102")
        let leader3 = Leaders(leader: "Мингазова Альмира", numberOfGroup: "11-103")
        let leader4 = Leaders(leader: "Талова Олеся", numberOfGroup: "11-104")
        let leader5 = Leaders(leader: "Буланов Мендияр", numberOfGroup: "11-105")
        let leader6 = Leaders(leader: "Хорьяков Андрей", numberOfGroup: "11-106")
        let leader7 = Leaders(leader: "Грачёв Валентин", numberOfGroup: "11-107")
        let leader8 = Leaders(leader: "Фазлыев Радмир", numberOfGroup: "11-108")
        let leader9 = Leaders(leader: "Бабич Сергей", numberOfGroup: "11-109")
        let leader10 = Leaders(leader: "Гильфанов Адель", numberOfGroup: "11-110")
        let leader11 = Leaders(leader: "Чекушкин Виталий", numberOfGroup: "11-111")
        let leader12 = Leaders(leader: "Хайруллина Карина", numberOfGroup: "11-112")
        let leader13 = Leaders(leader: "Мамасолиев Давронбек", numberOfGroup: "11-113")
        
        arrayOfLeaders.append(leader1)
        arrayOfLeaders.append(leader2)
        arrayOfLeaders.append(leader3)
        arrayOfLeaders.append(leader4)
        arrayOfLeaders.append(leader5)
        arrayOfLeaders.append(leader6)
        arrayOfLeaders.append(leader7)
        arrayOfLeaders.append(leader8)
        arrayOfLeaders.append(leader9)
        arrayOfLeaders.append(leader10)
        arrayOfLeaders.append(leader11)
        arrayOfLeaders.append(leader12)
        arrayOfLeaders.append(leader13)
    }
}













