//
//  NotesTableViewController.swift
//  test
//
//  Created by Kahina Lounis on 08/04/2021.
//

import UIKit

class NotesTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let titles = ["titre 1", "titre 2","titre 3","title 4","kahina","lounis"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }
  
}
extension NotesTableViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for : indexPath ) as! NotesItemTableViewCell
        cell.titleLabel.text = titles[indexPath.row]
        return cell
    }
   
}

class NotesItemTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
           
}
//https://www.ralfebert.de/ios-examples/uikit/uitableviewcontroller/custom-cells/
