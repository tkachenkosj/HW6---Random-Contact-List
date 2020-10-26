//
//  DetailViewController.swift
//  HW6 - Random Contact List
//
//  Created by Сергей Ткаченко on 26.10.2020.
//

import UIKit

class DetailViewController: UIViewController {

    var person: Person!
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.firstName + " " + person.lastName
        emailLabel.text = "Email: \(person.eMail)"
        phoneNumberLabel.text = "Phone number: \(person.phoneNumber)"
    }
    

}
