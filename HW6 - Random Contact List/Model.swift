//
//  Model.swift
//  HW6 - Random Contact List
//
//  Created by Сергей Ткаченко on 22.10.2020.
//

import Foundation
import UIKit

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let eMail: String
    
    static func createPersons() -> [Person] {
        var persons: [Person] = []
        
        for index in 0..<names.count {
            let person = Person(firstName: names[index],
                                 lastName: surnames[index],
                                 phoneNumber: phoneNumbers[index],
                                 eMail: eMails[index])
            persons.append(person)
        }
        return persons
    }
}

let names = [
    "Ivan",
    "Vasiliy",
    "Nikolay",
    "Mikhail",
    "Sergey",
    "Yuriy",
    "Andrey",
    "Aleksandr"
].shuffled()

let surnames = [
    "Utyugov",
    "Knizhkin",
    "Otkrytkin",
    "Monitorov",
    "Makbookin",
    "Knopkin",
    "Myshkin",
    "Probelov"
].shuffled()

let phoneNumbers = [
    "198364738",
    "085493648",
    "274539562",
    "777542849",
    "926649200",
    "997644828",
    "862498622",
    "111828199"
].shuffled()

let eMails = [
    "dog@google.com",
    "cat@google.com",
    "mouse@google.com",
    "cow@google.com",
    "horse@google.com",
    "bird@google.com",
    "bug@google.com",
    "giraffe@google.com"
].shuffled()




