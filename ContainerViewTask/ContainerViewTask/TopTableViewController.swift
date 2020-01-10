//
//  TopTableViewController.swift
//  ContainerViewTask
//
//  Created by Vidyashri on 20/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

class TopTableViewController: UITableViewController {
    
    var NotificationArray = ["Notification #1", "Notification #2", "Notification #3", "Notification #4", "Notification #5"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NotificationArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TopTableCustomCell
        cell.notificationLabel.text = NotificationArray[indexPath.row]
        return cell
    }

}
