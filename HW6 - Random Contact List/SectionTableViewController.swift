//
//  SectionTableViewController.swift
//  HW6 - Random Contact List
//
//  Created by Сергей Ткаченко on 26.10.2020.
//

import UIKit

class SectionTableViewController: UITableViewController {

    var persons = Person.createPersons()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.firstName + " " + person.lastName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let person = persons[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.eMail : person.phoneNumber

        return cell
    }
    
}
