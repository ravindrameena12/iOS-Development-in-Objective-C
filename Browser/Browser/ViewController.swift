//
//  ViewController.swift
//  Browser
//
//  Created by Vidyashri on 14/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        
        let url = URL(string: "https://www.hackingwithswift.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

