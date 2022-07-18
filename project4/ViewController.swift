//
//  ViewController.swift
//  project4
//
//  Created by Madiapps on 18/07/2022.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webview: WKWebView!
    
    override func loadView() {
        webview = WKWebView()
        webview.navigationDelegate = self
        view = webview
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
        
        let url = URL(string: "https://www.dev.to")!
        webview.load(URLRequest(url: url))
        webview.allowsBackForwardNavigationGestures = true
    }

    @objc func openTapped() {
        
    }
}

