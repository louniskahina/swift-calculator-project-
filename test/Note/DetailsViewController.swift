//
//  File.swift
//  test
//
//  Created by Kahina Lounis on 19/04/2021.
//


import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var titleText : String?
    var descripText : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = titleText
        descriptionLabel.text = descripText
              
    }
}
