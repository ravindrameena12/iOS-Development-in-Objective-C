//
//  TableViewController.swift
//  table view section task
//
//  Created by Vidyashri on 23/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var tableview: UITableView!
    var queryResult: QueryService?
    var vechicleData: [vehiclemodel]?
    
    private let headerIdentifier = "headerCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableView.automaticDimension
        queryResult = QueryService()
        self.queryResult?.getSearchResults(completionHandler: { (dtr) in
        self.vechicleData = dtr
        self.tableview.reloadData()
        })
    }
    
    func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return vechicleData == nil ? 0 : vechicleData!.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vechicleData![section].collasped ? (1+vechicleData![section].Models.count) : 1
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: headerIdentifier, for: indexPath) as! SectionHeaderTableViewCell
            cell.titleLabel.text = vechicleData![indexPath.section].Make
            
            if vechicleData![indexPath.section].collasped {
                cell.setExpanded()
            } else {
                cell.setCollapsed()
            }
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = vechicleData![indexPath.section].Models[indexPath.row - 1]
            return cell
        }
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            expandcollaspe(section: indexPath.section)
        }
    }
    
    func expandcollaspe(section: Int) {
            vechicleData![section].collasped = !vechicleData![section].collasped
            if let vehcount = vechicleData?.count {
                for i in 0..<vehcount {
                    if i != section{
                        vechicleData![i].collasped = false
                    }
                }
            }
            tableView.reloadData()
    }
    
}
