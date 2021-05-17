//
//  NotesTableViewController.swift
//  test
//
//  Created by Kahina Lounis on 08/04/2021.
//

import UIKit
import MaterialComponents.MaterialButtons

class NotesTableViewController: UIViewController {
    let treatments =  Treatments()
    @IBOutlet weak var tableView: UITableView!
    
   // var notes = [Note]()
    var noteTitre_ = String()
    var noteDesription_ = String()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //retrieve data

        //init note table
        tableView.reloadData()
        tableView.dataSource = self 
        
        //cell autoresize
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 600
        
        //add button
        setFloatingButton()
    }
    
    @IBAction func done(segue:UIStoryboardSegue) {
        let addNoteVC = segue.source as! AddNoteViewController
        noteTitre_ = addNoteVC.noteTitre
        noteDesription_ = addNoteVC.noteDescription
        
        //creat note
        let newNote = Note(title: noteTitre_, descrip: noteDesription_)
        
        //add note
        treatments.add(newNote)
        
        //reload data
        tableView.reloadData()
    }
    
    @IBAction func clearListButton(_ sender: UIBarButtonItem) {
        treatments.remove()
        tableView.reloadData()
    }
    
}

// Floating action button
extension NotesTableViewController {
   
    func setFloatingButton() {
        let floatingButton = MDCFloatingButton()
        let image = UIImage(systemName: "plus")
        floatingButton.sizeToFit()
        floatingButton.setImage(image, for: .normal)
        floatingButton.setImageTintColor(.white, for: .normal)
        floatingButton.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        floatingButton.addTarget(self, action: #selector(tapCreateNote), for: .touchUpInside)
        view.addSubview(floatingButton)
        
        //constraints
        floatingButton.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraint(NSLayoutConstraint(item: floatingButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -75))
        view.addConstraint(NSLayoutConstraint(item: floatingButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -45))
    }

    /// Event when click on the floating action button
    /// Create note action
    @objc func tapCreateNote(_ sender: Any) {
        print("navigate to another viewController")
        navigateToAddNoteVC()
    }
    
    private func navigateToAddNoteVC() {
        
          if let newVc = UIStoryboard(name : "Main", bundle: nil).instantiateViewController(withIdentifier: "AddNoteView") as? AddNoteViewController  {
          if let navigation = navigationController {
              navigation.pushViewController(newVc, animated: true)
           }
         }
    }
}
