//
//  ViewController.swift
//  Guessing Game
//
//  Created by Ajitesh on 06/07/17.
//  Copyright © 2017 Ajitesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputNo: UITextField!
    
    @IBOutlet weak var final: UILabel!
    
    @IBAction func button(_ sender: Any) {
        let guess = String(arc4random_uniform(6))
        
        if inputNo.text == guess {
            final.text = "You're right :)"
        }
        else {
            final.text = "Oh sorry, its \(guess) :("
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

