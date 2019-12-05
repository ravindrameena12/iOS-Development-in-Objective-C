//
//  ViewController.swift
//  CustomNotification
//
//  Created by Vidyashri on 13/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: NSMutableArray!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupNotificationSettings() {
        // Specify the notification types.
        var notificationTypes: UIUserNotificationType = UIUserNotificationType(rawValue: UIUserNotificationType.alert.rawValue | UIUserNotificationType.sound.rawValue)
        
        var justInformAction = UIMutableUserNotificationAction()
        justInformAction.identifier = "justInform"
        justInformAction.title = "OK, got it"
        justInformAction.activationMode = UIUserNotificationActivationMode.background
        justInformAction.isDestructive = false
        justInformAction.isAuthenticationRequired = false
        
        var modifyListAction = UIMutableUserNotificationAction()
        modifyListAction.identifier = "editList"
        modifyListAction.title = "Edit list"
        modifyListAction.activationMode = UIUserNotificationActivationMode.foreground
        modifyListAction.isDestructive = false
        modifyListAction.isAuthenticationRequired = true
        
        var trashAction = UIMutableUserNotificationAction()
        trashAction.identifier = "trashAction"
        trashAction.title = "Delete list"
        trashAction.activationMode = UIUserNotificationActivationMode.background
        trashAction.isDestructive = true
        trashAction.isAuthenticationRequired = true
        
        let actionsArray = NSArray(objects: justInformAction, modifyListAction, trashAction)
        let actionsArrayMinimal = NSArray(objects: trashAction, modifyListAction)
        
//        convenience init(forTypes allowedUserNotificationTypes: UIUserNotificationType, categories actionSettings: NSSet?)
        let categoriesForSettings = NSSet(objects: shoppingList)
        let newNotificationSettings = UIUserNotificationSettings(types: notificationTypes, categories: categoriesForSettings as! Set<UIUserNotificationCategory>)
        
    }
    
    func setActions(_ actions: [AnyObject]!, forContext context: UIUserNotificationActionContext) {
        
    }

}

