//
//  NotesTableViewController.swift
//  test
//
//  Created by Kahina Lounis on 08/04/2021.
//

import UIKit


class NotesTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let notes = [
        note(title: "title 1", descrip : "kahina kahina............lounis.......description 1"),
        note(title: "title 2", descrip : "description 2"),
        note(title: "title 3", descrip : "description 3"),
        note(title: "title 4", descrip : "description 4"),
        note(title: "title 5", descrip : "description 5")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}
// MARK: dataSource and delegates
extension NotesTableViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for : indexPath ) as! NotesItemTableViewCell
        let note = notes[indexPath.row]
        cell.titleLabel?.text = note.title
        cell.descriptionLabel?.text = note.descrip
        return cell
    }
}

// MARK: TableViewCell
class NotesItemTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
}

// MARK: note structure
struct note {
    var title: String
    var descrip: String
}
