//
//  SecondVC.swift
//  Datapass using Closure
//
//  Created by Sunil Developer on 23/01/23.
//

import UIKit

class SecondVC: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    var name: String?
    var address: String?
    override func viewDidLoad() {
        super.viewDidLoad()
       featchData()
        
    }
    
    func featchData() {
        lblName.text = name
        lblAddress.text = address
    }
    @IBAction func onClickBackBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
