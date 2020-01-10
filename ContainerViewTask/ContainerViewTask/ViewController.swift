import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TopViewController: UIView!
    @IBOutlet weak var BottomViewController: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadViewControllers()
    }
    
    private func loadViewControllers() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let topcontroller: UIViewController = storyboard.instantiateViewController(withIdentifier: "TopTableViewController") as! TopTableViewController
        let bottomcontroller: UIViewController = storyboard.instantiateViewController(withIdentifier: "BottomTableViewController") as! BottomTableViewController
        
        topcontroller.view.translatesAutoresizingMaskIntoConstraints = false
        bottomcontroller.view.translatesAutoresizingMaskIntoConstraints = false
        
        addChild(topcontroller)
        addChild(bottomcontroller)
        
        self.addSubview(subView: topcontroller.view, toView: TopViewController)
        self.addSubview(subView: bottomcontroller.view, toView: BottomViewController)
    }
    
    func addSubview(subView:UIView, toView parentView:UIView) {
        var viewBindingsDict = [String: AnyObject]()
        parentView.addSubview(subView)
        viewBindingsDict["subView"] = subView
    parentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[subView]|",
                                                             options: [], metrics: nil, views: viewBindingsDict))
    parentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[subView]|",
                                                             options: [], metrics: nil, views: viewBindingsDict))
    }

}

