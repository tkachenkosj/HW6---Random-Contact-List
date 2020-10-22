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
}

var names = [
    "Ivan",
    "Vasiliy",
    "Nikolay",
    "Mikhail",
    "Sergey",
    "Yuriy",
    "Andrey",
    "Aleksandr"
]

var surnames = [
    "Utyugov",
    "Knizhkin",
    "Otkrytkin",
    "Monitorov",
    "Makbookin",
    "Knopkin",
    "Myshlin",
    "Probelov"
]

var phoneNumbers = [
    "198364738",
    "085493648",
    "274539562",
    "777542849",
    "926649200",
    "997644828",
    "862498622",
    "111828199"
]

var eMails = [
    "dog@google.com",
    "cat@google.com",
    "mouse@google.com",
    "cow@google.com",
    "horse@google.com",
    "bird@google.com",
    "bug@google.com",
    "giraffe@google.com"
]

var persons = [Person]()

func makeList(array: [Person]) -> [Person] {
    for _ in 0..<names.count {
        let person = Person(firstName: names[Int.random(in: 0..<names.count)],
                             lastName: surnames[Int.random(in: 0..<surnames.count)],
                             phoneNumber: phoneNumbers[Int.random(in: 0..<phoneNumbers.count)],
                             eMail: eMails[Int.random(in: 0..<eMails.count)])
        persons.append(person)
    }
    return persons
}


