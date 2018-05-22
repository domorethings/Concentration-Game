//
//  ViewController.swift
//  Concentration
//
//  Created by Eric Yang on 5/19/18.
//  Copyright © 2018 Eric Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🐙", "🐳", "🐙", "🐳"]
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Card number was not in cardNumbers")
        }
       
    }
    
    func flipCard(withEmoji emoji:String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

