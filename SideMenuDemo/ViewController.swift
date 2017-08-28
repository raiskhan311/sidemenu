//
//  ViewController.swift
//  SideMenuDemo
//
//  Created by APPLE on 28/08/17.
//  Copyright © 2017 rsku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sidemenuconstraints: NSLayoutConstraint?
    
    var sideMenuShow:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK:- helper method
    
    @objc func toggleSideMenu(){
        if sideMenuShow{
            sideMenuShow = false
            sidemenuconstraints?.constant = -240
            
        }else{
            sideMenuShow = true
            sidemenuconstraints?.constant = 0
            
        }
        
        UIView.animate(withDuration: 0.3){
            self.view.layoutIfNeeded()
        }
    }
}

