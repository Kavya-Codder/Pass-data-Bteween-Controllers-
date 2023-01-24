//
//  SecondVC.swift
//  Datapass using Closure
//
//  Created by Sunil Developer on 23/01/23.
//

import UIKit

class SecondVC: UIViewController {
    let imgFb = UIImage(named: "imgFB")
    let imgTwitter = #imageLiteral(resourceName: "imgTwitter")
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnFB(_ sender: Any) {
       // NotificationCenter.default.post(name: .facebook, object: ["name": 123])
        NotificationCenter.default.post(name: .facebook, object: nil, userInfo: ["name": "Facebook", "image": imgFb ?? UIImage()])
    }
    
    @IBAction func btnTwiter(_ sender: Any) {
        //NotificationCenter.default.post(name: .twitter, object: ["name": 767])
        NotificationCenter.default.post(name: .twitter, object: nil, userInfo: ["name": "Twitter", "image": imgTwitter ])
    }
}
