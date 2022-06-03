//
//  main.swift
//  HomeWork_Enum
//
//  Created by Nor Gh's Mac mini on 6/3/22.
//  Copyright © 2022 Nor Gh's Mac mini. All rights reserved.
//

import Foundation

print("Hello, World!")

//HomeWork 1
//Mark: - to create a new type for values north,south,west,east

enum Coordinates {
    case north
    case south
    case west
    case east
}

let correntLocation : Coordinates = Coordinates.east
let correntLocationTwo : Coordinates = Coordinates.west
let correntLocationThree : Coordinates = Coordinates.south
let correntLocationFour : Coordinates = Coordinates .north

//HomeWork 2
//Mark: - Create a new type at the cost of the months of the year.

enum Year : CaseIterable{
    case january,february,march,april,may,june,july,august,september,october,november,december
}

var lastLogin : Year = Year.january
var lastSignin : Year = Year.february
var lastLoginTwo : Year = Year.march
var lastSigninTwo : Year = Year.april
var lastLoginThree : Year = Year.may
var lastSigninThree : Year = Year.june
var logininFour : Year = Year.july
var loginSigninFour : Year = Year.august
var loginSigniLast : Year = Year.september
var loginSignIn : Year = Year.october
var lastLoginInNovemeber : Year = Year.november
var SigninOnDecember : Year = Year.december

//HomeWork 3 (CaseIterable)

for mounth in Year.allCases{
    print("Corrent mounth is \(mounth)")
}

//HomeWork 4
//Mark: - Create a new type whose probable values will be those states.

enum Assignments {
    case newCreated(todayCreated:String)
    case isInProcess(toBeContinued:String)
    case chackingProcess(chacking:String)
    case complatedProcess(FinisedStatus:Bool)
    //case FinishedTime(time:Double)
    //case FinishedYear(year:Int)
    //case FinishedData(data:Float)
}

let newCreated : Assignments = Assignments.newCreated(todayCreated: "Today Created")
let isInProcess : Assignments = Assignments.isInProcess(toBeContinued: "In Process")
let chackingProcess : Assignments  = Assignments.chackingProcess(chacking: "Loading Process")
let complatedProcess : Assignments = Assignments.complatedProcess(FinisedStatus: false)
//let FinishedTime : Assignments = Assignments.FinishedTime(time: 13.45)
//let FinishedYear : Assignments = Assignments.FinishedYear(year: 2009)
//let FinishedData : Assignments = Assignments.FinishedData(data: 01.07)

//HomeWork 5
///Mark: - Գրասենյակային աշխատողները ամեն օր ստանում են հանձնարարություները և այդ հանձնարարություները կատարման ընթացքում կարող են ունենալ տարբեր վիճակներ ՝  Նոր ստեղծված, ընթացքի մեջ է, ստուգվում է և ավարտված։ Երբ փոխվում է ընտացիկ վիաճակը պետք է նաև պահել ինֆորմացիա ամսաթվի տեսքով(այսինքն թե այդ աշատողը ինչ ժամի է սկսել կատարել այդ հանձնարարաությունը, ինչ ժամի է ավարտել)   Ստեղծել նոր տիպ որի հավանական արժեքները կլինեն այդ վիճակները իսկ այդ վիժակները կունենան իրենց կապված արժեքներ որը ցույց կատա ամսաթիվը (ամսաթիվը դիտարկել String):

enum WorkersAssignments {
    
    case personNewCreated(startTime:String, finishTime:String)
     case personFullNameisInProcess(startTime:String, finishTime:String)
     case personFullNameChackingProcess(startTime:String, finishTime:String)
     case personFullNameComplatedProcess(startTime:String, finishTime:String)
}

let personFullName :  WorkersAssignments = WorkersAssignments.personNewCreated(startTime: "09:00 AM", finishTime: "18:00 PM")
let personFullName2 : WorkersAssignments = WorkersAssignments.personFullNameisInProcess(startTime: "12:00 AM", finishTime: "15:00 PM")
let personFullName3 : WorkersAssignments = WorkersAssignments.personFullNameChackingProcess(startTime: "15:00 PM", finishTime: "17:00 PM")
let personFullName4 : WorkersAssignments = WorkersAssignments.personFullNameComplatedProcess(startTime: "17:00 PM", finishTime: "18:00 PM")

switch personFullName {
case .personNewCreated(startTime: "00:00 AM", finishTime: "01:00 PM"):
    print("Person just created")
case .personFullNameisInProcess(startTime: "24:00 AM", finishTime: "12:00 PM"):
    print("In Process")
case.personFullNameChackingProcess(startTime: "14:00 AM", finishTime: "12:55 PM"):
    print("Person Chacking")
default:break
}

// ընդհանւր կպահեմ Մասիվի մեջ
let personStartFinishTime = [personFullName, personFullName2, personFullName3, personFullName4]
//Հետո կֆռամ վրայով։
for startfinish in personStartFinishTime {
    print(startfinish)
}

///6. Գրասենյակային աշխատողները ամեն օր ստանում են հանձնարարություները և այդ հանձնարարություները կատարման ընթացքում կարող են ունենալ տարբեր վիճակներ ՝  Նոր ստեղծված, ընթացքի մեջ է, ստուգվում է և ավարտված։ Երբ փոխվում է ընտացիկ վիաճակը պետք է նաև պահել ինֆորմացիա ամսաթվի տեսքով(այսինքն թե այդ աշատողը ինչ ժամի է սկսել կատարել այդ հանձնարարաությունը, ինչ ժամի է ավարտել)   Ստեղծել նոր տիպ որի հավանական արժեքները կլինեն այդ վիճակները իսկ այդ վիժակները կունենան իրենց կապված արժեքներ որը ցույց կատա ամսաթիվը (ամսաթիվը դիտարկել Data (type) https://developer.apple.com/documentation/foundation/data):

enum Assignments1 {
    case newCreated(todayCreated:String)
    case isInProcess(toBeContinued:String)
    case chackingProcess(chacking:String)
    case complatedProcess(FinisedStatus:Bool)

}

//7. Ստեղծել կոճակի (Button) ըթացքիկ վիճակը բնութագրող տիպ, այս խնդրում  կոճակը ունի 3 վիճակ (case) երբ սեղմված չէ (normal), երբ սեղմված է (selected), երբ վոչ ակտիվ է,  normal վիճակում իրեն կապակցված արժեքը պետք է լինի այդ Button-ի անունը, selected վիճակում  իրեն կապակցված արժեքը պետք է լինի այն ֆունկցիան որը պետք է կանչվի սեղմելուց հետո։

enum ButtonPressed {
    
    case normal(nameOfButton:String)
    case slected(selectedButton:String)
    case notActive
}

let mySelectedButton : ButtonPressed = ButtonPressed.slected(selectedButton: "selectedbutton")
let normalMode: ButtonPressed = ButtonPressed.normal(nameOfButton: "button")
let disableMode: ButtonPressed = ButtonPressed.notActive


func buttonPressed(argument:String) -> String {
    "This method will return 'Button Pressed'"
}

    switch mySelectedButton {
        
    case .slected(let buttonPressed2):
        print(buttonPressed(argument: buttonPressed2))
    case.notActive:
        print("The Button isnt active")
    case.normal(nameOfButton: "button"):
        print("Here is an button name")
    default : break
        
    }

//8. Ստեղծել կոճակի (Button) ըթացքիկ վիճակը բնութագրող տիպ, այս խնդրում  կոճակը ունի 3 վիճակ (case) երբ սեղմված չէ (normal), երբ սեղմված է (selected), երբ վոչ ակտիվ է,  normal վիճակում իրեն կապակցված արժեքը պետք է լինի այդ Button-ի անունը, selected վիճակում  իրեն կապակցված արժեքը պետք է լինի այն closure որը պետք է կանչվի սեղմելուց հետո։

enum ButtonMode {
    case normal(nameOfButton:String)
    case slected
    case notActive
}

let clouser = {() in return
    "This clouser will return string whn pressed \(ButtonMode.slected)"
}

let constantForSwitch:ButtonMode = ButtonMode.slected

switch constantForSwitch {
    case.notActive:
        print("This button \(ButtonMode.notActive) cant be execute")
    case .normal(nameOfButton: ""):
        print("Here is button name \(ButtonMode.normal(nameOfButton: "button"))")
    case.slected:
        print(clouser())
    default:break
}


