//
//  ViewController.swift
//  Popup-Bridge-Swift
//
//  Created by Jax DesMarais-Leder on 5/24/22.
//

import UIKit
import PopupBridge

class ViewController: UIViewController, POPPopupBridgeDelegate {
    
    var webView: WKWebView!
    var popupBridge: POPPopupBridge!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        popupBridge = POPPopupBridge(webView: webView, delegate: self)
        
        view.addSubview(webView)
        webView.load(URLRequest(url: URL(string: "https://braintree.github.io/popup-bridge-example/")!))
    }
    
    func popupBridge(_ bridge: POPPopupBridge, requestsPresentationOf viewController: UIViewController) {
        present(viewController, animated: true)
    }
    
    func popupBridge(_ bridge: POPPopupBridge, requestsDismissalOf viewController: UIViewController) {
        viewController.dismiss(animated: true)
    }
}

