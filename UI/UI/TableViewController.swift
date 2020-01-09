//
//  TableViewController.swift
//  UI
//
//  Created by Vidyashri on 16/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var carData = [CarClass]()
    
    var carNames = ["Honda", "Maruti", "Hyundai", "Bugati", "Renaults"]
    var phoneNumbers = ["2893823410", "0987654321", "1234567890", "1234509876", "0987612345"]
    var carDates = ["Monday - 1:00PM CST", "Tuesday - 2:00PM CST", "Wednesday - 3:00PM CST", "Thursday - 4:00PM CST", "Friday - 5:00PM CST"]
    var totalVehicles = ["284", "285", "286", "287", "288"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...4 {
            let car = CarClass(image: String(i), carName: carNames[i], phoneNumber: phoneNumbers[i], carDate: carDates[i], totalVehicle: totalVehicles[i])
            carData.append(car)
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return carData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell", for: indexPath) as! TableViewCell
        
        cell.carimage.image = UIImage(named: String(indexPath.row))
        cell.carTitle.text = carData[indexPath.row].carName
        cell.carNumber.attributedText = NSAttributedString(string: carData[indexPath.row].phoneNumber, attributes:
            [.underlineStyle: NSUnderlineStyle.single.rawValue])
        cell.carFax.text = carData[indexPath.row].phoneNumber
        cell.carData.text = carData[indexPath.row].carDate
        cell.carTotal.text = carData[indexPath.row].totalVehicle + " Total Vehicles"

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
