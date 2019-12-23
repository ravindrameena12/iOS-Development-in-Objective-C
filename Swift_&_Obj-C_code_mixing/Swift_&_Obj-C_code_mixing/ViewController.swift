//
//  ViewController.swift
//  Swift_&_Obj-C_code_mixing
//
//  Created by Vidyashri on 02/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book = Book(wihName: "Ravindra", andGrade: "A5")
        print(book.fName)
        print(book.grade)
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

