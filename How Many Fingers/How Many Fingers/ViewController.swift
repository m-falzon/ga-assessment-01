//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Matthew Falzon on 24/03/2015.
//  Copyright (c) 2015 Matthew Falzon. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var guess: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        
        var randomNumber = arc4random_uniform(5)
        
        var numberInt = guess.text.toInt()
        
        if numberInt != nil {
            
            if Int(randomNumber) == numberInt {
                
                resultLabel.text = "Correct"
                
            } else {
                
                resultLabel.text = "Incorrect, it was \(randomNumber)"
            }

            
        } else {
            
            resultLabel.text = "Please enter a number between 1 - 5"
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

