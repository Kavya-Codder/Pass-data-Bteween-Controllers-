//
//  SecondVC.swift
//  Datapass using Closure
//
//  Created by Sunil Developer on 23/01/23.
//

import UIKit

class SecondVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnFB(_ sender: Any) {
        NotificationCenter.default.post(name: .facebook, object: ["name": 123])
    }
    
    @IBAction func btnTwiter(_ sender: Any) {
        NotificationCenter.default.post(name: .twitter, object: ["name": 767])
    }
}
