//
//  NoteTableDataSource.swift
//  test
//
//  Created by Kahina Lounis on 02/05/2021.
//

import Foundation
import UIKit


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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DetailsViewController {
            let indexPath = tableView.indexPathsForSelectedRows?.first
            let selectedRow = indexPath!.row
            destination.titleText = notes[selectedRow].title
            destination.descripText = notes[selectedRow].descrip
        }
    }
 
  
 
}
