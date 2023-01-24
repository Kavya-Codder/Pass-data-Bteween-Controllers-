//
//  SecondVC.swift
//  Datapass using Closure
//
//  Created by Sunil Developer on 23/01/23.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    var name: String = ""
    var address: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = "Name: \(name)"
        lblAddress.text = "Address: \(address)"
    }
    
   
}
