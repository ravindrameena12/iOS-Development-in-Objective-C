//
//  FirstCustomSegue.swift
//  CustomSegues
//
//  Created by Vidyashri on 15/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

class FirstCustomSegue: UIStoryboardSegue {
    
    override func perform() {
        var firstVCView = self.source.view as UIView!
        var secondVCView = self.destination.view as UIView!
        
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        
        secondVCView?.frame = CGRect(x: 0.0, y: screenHeight, width: screenWidth, height: screenHeight)
        
        let window = UIApplication.shared.keyWindow
        window?.insertSubview(secondVCView!, aboveSubview: firstVCView!)
        
        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            firstVCView?.frame = CGRect.offsetBy(firstVCView.frame, 0.0, -screenHeight)
            secondVCView.frame = CGRectOffset(secondVCView.frame, 0.0, -screenHeight)
            
        }) { (Finished) -> Void in
            
        }
    }

}
