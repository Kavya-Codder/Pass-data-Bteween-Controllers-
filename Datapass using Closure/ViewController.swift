//
//  ViewController.swift
//  Datapass using Closure
//
//  Created by Sunil Developer on 22/01/23.
//

import UIKit

class ViewController: UIViewController, DataPass {
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblAddress: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func onClickAddBtn(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        vc.featchDataDelegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
    func featchData(name: String, address: String) {
        lblName.text = "Name: \(name)"
        lblAddress.text = "Address: \(address)"
    }
  }

