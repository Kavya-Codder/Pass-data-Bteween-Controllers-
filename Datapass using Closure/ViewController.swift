//
//  ViewController.swift
//  Datapass using Closure
//
//  Created by Sunil Developer on 22/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       // NotificationCenter.default.addObserver(self, selector: #selector(facebook(notification:)), name: .facebook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(twitter(notification:)), name: .twitter, object: nil)
       
        NotificationCenter.default.addObserver(forName: .facebook, object: nil, queue: .main) { (dic) in
            print(dic)
            self.lbl.text = dic.name.rawValue
        }
    }
    
    @objc func facebook(notification: Notification) {
        lbl.text = "Facebook"
        img.image = #imageLiteral(resourceName: "download")
        navigationController?.popViewController(animated: true)
    }
    
    @objc func twitter(notification: Notification) {
        lbl.text = "Twitter"
        img.image = #imageLiteral(resourceName: "download (1)")
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onClickBtn(_ sender: Any) {
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        navigationController?.pushViewController(secondVC, animated: true)
    }
    

}
// Extension
extension Notification.Name {
    static let facebook = Notification.Name("Facebook")
    static let twitter = Notification.Name("Twitter")
}

