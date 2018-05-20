//
//  ViewController.swift
//  Concentration
//
//  Created by Eric Yang on 5/19/18.
//  Copyright © 2018 Eric Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "🐙", on: sender)
    }
    
    func flipCard(withEmoji emoji:String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
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

