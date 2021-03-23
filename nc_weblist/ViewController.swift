//
//  ViewController.swift
//  nc_weblist
//
//  Created by daito yamashita on 2021/03/23.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    var data: (name: String, url: String)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // dataが設定されていればwebDataに代入する
        guard let webData = data else {
            return
        }
        
        // 表示するWebページのURLRequestを作る
        let myURL = URL(string: webData.url)
        let myRequest = URLRequest(url: myURL!)
        
        // Webを読み込む
        webView.load(myRequest)
        
    }
}

