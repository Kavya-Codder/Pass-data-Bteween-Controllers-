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
        self.performSegue(withIdentifier: "secondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVC" {
            if let vc = segue.destination as? SecondVC {
                vc.name = txtName.text ?? ""
                vc.address = txtAddress.text ?? ""
            }
        }
    }
}

