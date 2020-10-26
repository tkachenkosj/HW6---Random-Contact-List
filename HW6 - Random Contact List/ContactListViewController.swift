//
//  ContactListTableViewController.swift
//  HW6 - Random Contact List
//
//  Created by Сергей Ткаченко on 22.10.2020.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    let persons = Person.createPersons()

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactName", for: indexPath)
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.firstName + " " + person.lastName

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "Detail" { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            detailVC.person = persons[indexPath.row]
        }
    }

}
