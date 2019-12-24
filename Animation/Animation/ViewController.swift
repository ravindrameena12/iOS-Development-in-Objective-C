//
//  ViewController.swift
//  Animation
//
//  Created by Vidyashri on 03/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func bottomButtonpressed(_ sender: UIButton) {
        buttonAnimationAction()
    }
    
    func buttonAnimationAction() {
        UIView.animate(withDuration: 2, animations: {
            self.topView.backgroundColor = .brown
            self.topView.frame.size.width += 10
            self.topView.frame.size.height += 10
        }) { _ in
            UIView.animate(withDuration: 1, delay: 0.25, options: [.autoreverse, .curveEaseOut], animations: {
                self.topView.frame.origin.y -= 20
            }, completion: { (finished: Bool) in
                print("This animation is complete!! :)")
                
            })
        }
    }
    
}

