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
    var vechicleData: [apimodel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        queryResult = QueryService()
        self.queryResult?.getSearchResults(completionHandler: { (dtr) in
        self.vechicleData = dtr
        self.tableview.reloadData()
        })
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return vechicleData == nil ? 0 : vechicleData!.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vechicleData![section].Models.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return vechicleData![section].Make
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = vechicleData![indexPath.section].Models[indexPath.row]
        return cell
    }
    
}
