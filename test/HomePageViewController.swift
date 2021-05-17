//
//  HomePageViewController.swift
//  test
//
//  Created by Kahina Lounis on 21/04/2021.
//

import Foundation
import UIKit

class HomePageViewController : UIViewController{
    
    @IBOutlet weak var mathButton: UIButton!
    
    @IBOutlet weak var noteButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Show top bar
        let navController = self.navigationController
        navController?.setNavigationBarHidden(false, animated: true)

        // Add colors
        let navbar = self.navigationController?.navigationBar
        navbar?.barStyle = UIBarStyle.default
        
        navbar?.barTintColor = #colorLiteral(red: 0.5185667872, green: 0.6482151747, blue: 0.9121192098, alpha: 1)
        
        //Add titleView 
        let HomePageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        HomePageLabel.text = "Welcome"
        HomePageLabel.textColor = .white
        HomePageLabel.font = UIFont.boldSystemFont(ofSize: 30.0)
       
        // Add the text in the middle of the top bar
        navigationItem.titleView = HomePageLabel
        navigationItem.titleView?.layoutMargins = UIEdgeInsets(top: 16, left: 8, bottom: 8, right: 8)
        
        mathButton.layer.cornerRadius = 15
        noteButton.layer.cornerRadius = 15
        
        
        // Change statusbar color
        if #available(iOS 13.0, *) {
            let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
            let statusBar = UIView(frame: window?.windowScene?.statusBarManager?.statusBarFrame ?? CGRect.zero)
            statusBar.backgroundColor = #colorLiteral(red: 0.5185667872, green: 0.6482151747, blue: 0.9121192098, alpha: 1)
            window?.addSubview(statusBar)
        }
    }
    }

