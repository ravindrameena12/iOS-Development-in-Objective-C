//
//  BottomTableViewController.swift
//  ContainerViewTask
//
//  Created by Vidyashri on 20/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

class BottomTableViewController: UITableViewController {
    
    var vehicleArray = ["Vehicle #1", "Vehicle #2", "Vehicle #3", "Vehicle #4", "Vehicle #5"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicleArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BottomTableCustomCell
        cell.vehicleLabel.text = vehicleArray[indexPath.row]
        return cell
    }

}
