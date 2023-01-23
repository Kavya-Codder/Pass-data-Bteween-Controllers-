//
//  SecondVC.swift
//  Datapass using Closure
//
//  Created by Sunil Developer on 22/01/23.
//

import UIKit

class SecondVC: UIViewController {
    

    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtName: UITextField!
    var callBack: ((_ name: String, _ address: String) -> Void)?
    
    typealias myDouble = Double
    
    override func viewDidLoad() {
        super.viewDidLoad()
  let abc = myDouble(123)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickSubmitBtn(_ sender: Any) {
        callBack?(txtName.text ?? "", txtAddress.text ?? "")
        navigationController?.popViewController(animated: true)
    }
    

}
