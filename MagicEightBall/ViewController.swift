//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Daniela Bulgaru on 04/07/2018.
//  Copyright © 2018 Daniela Bulgaru. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myTextField: UITextField!
    
    @IBAction func didPressMyButton(_ sender: Any) {
        myLabel.text = myTextField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
