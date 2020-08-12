//
//  WebViewController.swift
//  application
//
//  Created by James Liddle on 12/08/2020.
//  Copyright © 2020 James Liddle. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var web_view: WKWebView!
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        let url = URL(string: "https://www.google.com")
        let myrequest = URLRequest(url: url!)
        web_view.load(myrequest)

    }
    override func loadView()
    {
        let web_config = WKWebViewConfiguration()
        web_view = WKWebView(frame: .zero,configuration: web_config)
        web_view.uiDelegate = self
        view = web_view
    }

   

}
