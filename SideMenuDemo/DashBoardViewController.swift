//
//  DashBoardViewController.swift
//  SideMenuDemo
//
//  Created by APPLE on 28/08/17.
//  Copyright © 2017 rsku. All rights reserved.
//

import UIKit

class DashBoardViewController: UIViewController {
    
    @IBOutlet weak var sideMenuConstraints: NSLayoutConstraint?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(showProfile), name: NSNotification.Name("showProfile"), object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(showSettings), name: NSNotification.Name("showSettings"), object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(showDetails), name: NSNotification.Name("showDetails"), object: nil)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func showProfile(){
        performSegue(withIdentifier: "showProfileViewController", sender: self)
    }
    
    @objc func showSettings(){
        performSegue(withIdentifier: "showSettingsViewController", sender: self)
    }
    
    @objc func showDetails(){
        performSegue(withIdentifier: "showDetailsViewController", sender: self)
    }
    
    
    @IBAction func btn_sideMenu(_ sender: Any) {
        print("sideMenuButton Pressed")
        NotificationCenter.default.post(name: Notification.Name("ToggleSideMenu"), object: nil)
    }
    
}
