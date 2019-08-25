//
//  ViewController.swift
//  AlertUITestcase
//
//  Created by iOSDev on 8/23/19.
//  Copyright © 2019 iOSDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func alert1Tap(_ sender: Any) {
        showMessage(sender, msg:AlertUIMessageConstants.alert1Message)
    }
    
    @IBAction func alert2Tap(_ sender: Any) {
        showMessage(sender, msg: AlertUIMessageConstants.alert2Message)
    }
    
    func showMessage(_ sender:Any,msg:String){
        if let btn = sender as? UIButton {
            
            let alert = UIAlertController(title: btn.titleLabel?.text, message: msg, preferredStyle: .alert)
            
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
}

