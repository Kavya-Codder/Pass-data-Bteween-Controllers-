//
//  ViewController.swift
//  Datapass using Closure
//
//  Created by Sunil Developer on 22/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtAddress: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func onClickSubmitBtn(_ sender: Any) {
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        secondVC.name = txtName.text
        secondVC.address = txtAddress.text
        navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
}

