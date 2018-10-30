
//
//  CalculateViewController.swift
//  TestDemoApp
//
//  Created by リヴォーフ　ユーリ on 2018/10/29.
//  Copyright © 2018 リヴォーフ　ユーリ. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var goBack: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad   ()
        // Do any additional setup after loading the view, typically from a nib.
        goBack.isAccessibilityElement = true
        goBack.accessibilityIdentifier = "goback"
        myTextField.accessibilityIdentifier = "TextField"
    }
    @IBAction func calculate(_ sender: Any) {
        let localString: String = myTextField?.text ?? ""
        let result = Int(localString)
        
        var my_result = result ?? 0;
        my_result = my_result + 1
        myTextField.text = "\(my_result)";
    }
}
