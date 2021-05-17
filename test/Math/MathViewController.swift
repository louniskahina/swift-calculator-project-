//
//  ViewController.swift
//  test
//
//  Created by Kahina Lounis on 22/03/2021.
//

import UIKit

class MathViewController: UIViewController {
  
    let mathViewModel = MathViewModel()
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func clearButtonAction(_ sender: UIButton) {
        mathViewModel.clearCurrentOperation()
       // showCurrent(operation: mathViewModel.currentOperation)
        resultLabel.showCurrent(operation: mathViewModel.currentOperation)
    }
    //à tester
    /*func addElementToCurrentOperation(tag: Int) {
        let elements = ["0","1","2","3","4","5","6","7","8","9","+","-","/","*"]
        mathViewModel.currentOperation.append(elements[tag])
    }*/
    
    @IBAction func resultButtonAction(_ sender: UIButton) {
        if let result = mathViewModel.calculate(operation: mathViewModel.currentOperation) {
            //showCurrent(operation: result)
            resultLabel.showCurrent(operation: result)
        }
        else {
            displayErrorAlert()
        }
    }

    @IBAction func operIntButtonAction(_ sender: UIButton) {
        mathViewModel.addElementToCurrentOperation(tag: sender.tag)
       // showCurrent(operation: mathViewModel.currentOperation)
        resultLabel.showCurrent(operation: mathViewModel.currentOperation)
    }
    
    func showCurrent(operation: String) {
        resultLabel.text! = operation
    }
    
    func displayErrorAlert() { //  3 tests
        let alert = UIAlertController(title: "Error", message: "Enter a valid mathematical formula to calculate", preferredStyle: .alert)//1 resortir ça et tester
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))//3->tester si on clique sur dismiss alert disparait
        self.present(alert, animated: true, completion: nil)//2 tester l'affichage
    }
    
    
}

// Topbar
extension MathViewController {
    override func viewDidAppear(_ animated: Bool) {
        // Add image for the top bar
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        let image = UIImage(systemName: "sun.max.fill")
        imageView.tintColor = .yellow
        imageView.contentMode = .scaleAspectFit
        imageView.image = image

        // Add the logo in the middle of the top bar
        navigationItem.titleView = imageView
        navigationItem.titleView?.layoutMargins = UIEdgeInsets(top: 16, left: 8, bottom: 8, right: 8)

        //change backButton color
        navigationItem.backBarButtonItem?.tintColor = .white
}
}

extension UILabel {
    func showCurrent(operation: String) {
        self.text! = operation
    }
}


// voir comment on pourrait implemanter mvvm sur ce projet, quels changements à faire ?
//le model : noteItem  -> it’s a plain structure of data
//le viewmodel : Il reçoit des informations du VC, traite toutes ces informations et les renvoie au VC.
//viewcontroller : il n'effectue que des opérations liées à l'interface utilisateur - Afficher/obtenir des informations. Fait partie de la couche de vue


//data persistance in swift
// userDefaults, keychain, saving files to disk, core data, sqlite, propertyLists
//https://www.iosapptemplates.com/blog/ios-development/data-persistence-ios-swift

