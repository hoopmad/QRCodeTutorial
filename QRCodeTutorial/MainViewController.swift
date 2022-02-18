//
//  ViewController.swift
//  QRCodeTutorial
//
//  Created by Kwon Young Jeong on 2022/02/18.
//

import UIKit
import WebKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var qrcodeBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL (string: "https://www.naver.com")
        let requestObj = URLRequest(url: url!)
        webView.load(requestObj)
        
        qrcodeBtn.layer.borderWidth = 3
        qrcodeBtn.layer.borderColor = UIColor.blue.cgColor
        qrcodeBtn.layer.cornerRadius = 10
        qrcodeBtn.addTarget(self, action: #selector(qrcodeReaderLaunch), for: .touchUpInside)
        
    }

    
    @objc fileprivate func qrcodeReaderLaunch(){
        print("MainViewController - qrcodeReaderLaunch() called")
    }

}

