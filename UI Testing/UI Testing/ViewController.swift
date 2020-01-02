//
//  ViewController.swift
//  UI Testing
//
//  Created by Vidyashri on 12/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    var count = 0
    @IBAction func incrementButton(_ sender: UIButton) {
        count += 1
        counterLabel.text = String(count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }
}

