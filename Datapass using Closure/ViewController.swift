//
//  ViewController.swift
//  Datapass using Closure
//
//  Created by Sunil Developer on 22/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblAddress: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func onClickAddBtn(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        vc.callBack = {
            (name, address) in
            self.lblName.text = name
            self.lblAddress.text = address
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

