//
//  AOModalStatusView.swift
//  CreatingFramework
//
//  Created by Vidyashri on 28/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

public class AOModalStatusView: UIView {

    @IBOutlet weak var statusImage: UIImageView!
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var subheadLabel: UILabel!
    
    let nibName = "AOModalStatusView"
    var contentView: UIView!
    var timer: Timer?
    
    // MARK: Set Up View
    public override init(frame: CGRect) {
        // For use in code
        super.init(frame: frame)
        setUpView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        // For use in Interface Builder
        super.init(coder: aDecoder)
        setUpView()
    }
    
    private func setUpView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        self.contentView = (nib.instantiate(withOwner: self, options: nil).first as! UIView)
        addSubview(contentView)
        
        contentView.center = self.center
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true
        
        headlineLabel.text = ""
        subheadLabel.text = ""
    }
    
    public override func didMoveToSuperview() {
        // Add a timer to remove the view
        self.timer = Timer.scheduledTimer(
            timeInterval: TimeInterval(3.0),
            target: self,
            selector: #selector(self.removeSelf),
            userInfo: nil,
            repeats: false)
    }
    
    @objc private func removeSelf() {
        self.removeFromSuperview()
    }
    
    // Allow view to control itself
    public override func layoutSubviews() {
        // Rounded corners
        self.layoutIfNeeded()
        self.contentView.layer.masksToBounds = true
        self.contentView.clipsToBounds = true
        self.contentView.layer.cornerRadius = 10
    }
    
    // Provide functions to update view
    public func set(image: UIImage) {
        self.statusImage.image = image
    }
    public func set(headline text: String) {
        self.headlineLabel.text = text
    }
    public func set(subheading text: String) {
        self.subheadLabel.text = text
    }

}
