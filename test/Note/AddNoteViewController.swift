//
//  AddNoteViewController.swift
//  test
//
//  Created by Kahina Lounis on 27/04/2021.
//
import UIKit
import Foundation

class AddNoteViewController : UIViewController {
    @IBOutlet weak var titleTextField: UITextField!

    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        
    }
    var noteTitre : String = ""
    var noteDescription : String = ""
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "donesegue" {
           noteTitre = titleTextField.text!
           noteDescription = descriptionTextView.text!
        }
    }
    
  
   
}
