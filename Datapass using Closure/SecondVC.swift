//
//  SecondVC.swift
//  Datapass using Closure
//
//  Created by Sunil Developer on 22/01/23.
//

import UIKit
protocol DataPass {
    func featchData(name: String, address: String)
}
class SecondVC: UIViewController {
   
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtName: UITextField!
    var featchDataDelegate: DataPass!
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    
    @IBAction func onClickSubmitBtn(_ sender: Any) {
        self.featchDataDelegate?.featchData(name: txtName.text ?? "", address: txtAddress.text ?? "")
        navigationController?.popViewController(animated: false)
    }
    

}
