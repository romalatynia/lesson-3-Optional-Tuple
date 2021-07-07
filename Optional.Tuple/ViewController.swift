//
//  ViewController.swift
//  Optional.Tuple
//
//  Created by Harbros47 on 11.12.20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let numbers = 318
        let numberLetter = "12 месяцев в году"
        let numberDot = 35.7
        let numberWithoutDot: Double = 22
        
        let newNumberLetter = Int(numberLetter)
        let newNumberDot = Int(numberDot)
        let newNumberWithoutDot = Int(numberWithoutDot)
       
        let values = [numbers, newNumberLetter, newNumberDot, newNumberWithoutDot]
        
        var minValue = 0
        values.forEach {value in minValue = max(value ?? 0, minValue)}
        print(minValue)
        
        let person = (name: "Вася", age: 20, gender: "мужской")
        print("\(person.name) \(person.age) лет \(person.gender) пол\n")
        let person1 = (name: "Настя", age: 17, gender: "женский")
        let person2 = (name: "Коля", age: 14, gender: "мужской")
        let person3 = (name: "Регина", age: 25, gender: "женский")
        let person4 = (name: "Лёня", age: 33, gender: "мужской")
        
        let arrayTuples = [person, person1, person2, person3, person4]
        
        func information(name: String, age: Int, gender: String) -> String {
            """
            Имя: \(name)
            Возраст: \(age) лет
            Пол: \(gender)

            """
        }
        
        for infoPeople in arrayTuples {
            print("""
                Информация о \(infoPeople.name)
                \(information(name: infoPeople.name, age: infoPeople.age, gender: infoPeople.gender))
                """)
        }
        
        typealias Tuple = (name: String, age: Int, gender: String)
        func comparison(person: Tuple, person1: Tuple) -> Int {
            let value = person.age % person1.age
       return value
        }
        print("\(person.name) старше, чем \(person1.name) на \(comparison(person: person, person1: person1)) года")
    }

}
