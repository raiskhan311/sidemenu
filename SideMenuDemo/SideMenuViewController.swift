//
//  SideMenuViewController.swift
//  SideMenuDemo
//
//  Created by APPLE on 28/08/17.
//  Copyright © 2017 rsku. All rights reserved.
//

import UIKit

class SideMenuViewController: UITableViewController {
    
    let arrsideMenu = ["Profile","Settings","Details", "Logout"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrsideMenu.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = arrsideMenu[indexPath.row]
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NotificationCenter.default.post(name: Notification.Name("ToggleSideMenu"), object: nil)
        print("select row - \(indexPath.row)")
        switch indexPath.row{
        case 0:
            NotificationCenter.default.post(name: Notification.Name("showProfile"), object: nil)
        case 1:
            NotificationCenter.default.post(name: Notification.Name("showSettings"), object: nil)
        case 2:
            NotificationCenter.default.post(name: Notification.Name("showDetails"), object: nil)
        default:
            break
            
        }
    }
}
