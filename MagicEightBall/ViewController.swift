//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Daniela Bulgaru on 04/07/2018.
//  Copyright © 2018 Daniela Bulgaru. All rights reserved.
//

import UIKit

let possibleMagic8Answers =
    ["It is certain.",
     "It is decidedly so.",
     "Without a doubt.",
     "Yes - definitely.",
     "You may rely on it.",
     "As I see it, yes.",
     "Most likely.",
     "Outlook good.",
     "Yes.",
     "Signs point to yes.",
     "Reply hazy, try again.",
     "Ask again later.",
     "Better not tell you now.",
     "Cannot predict now.",
     "Concentrate and ask again.",
     "Don't count on it.",
     "My reply is no.",
     "My sources say no.",
     "Outlook not so good.",
     "Very doubtful."]

final class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myTextField: UITextField!
    
    @IBAction func didPressMyButton(_ sender: Any) {
        myLabel.text = myTextField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        guard let text = myTextField.text, !text.isEmpty else {
            myLabel.text = "I can't answer what I don't know."
            return
        }
        
        if motion == .motionShake {
            let unsignedCount = UInt32(possibleMagic8Answers.count)
            let number = Int(arc4random_uniform(unsignedCount))
            
            myLabel.text = possibleMagic8Answers[number]
        }
    }
}
