//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//


//Main.storyboard is also known as the Interface BUilder
// our coding file

import UIKit

class ViewController: UIViewController {
    // access to the dice img -> allows to reference UI element
    
    @IBOutlet weak var diceImageView1:UIImageView!
    @IBOutlet weak var diceImageView2:UIImageView!
        
    // activating depending on a condition
    // the condition here is when the view loads up
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // we want to change the dice when the view loads up
        
        // syntax -> Who.What = Value
        diceImageView1.image = UIImage(named:"DiceSix")
        // make tranparency dice1
        //diceImageView1.alpha=0.5
        diceImageView2.image = UIImage(named: "DiceTwo")
        
     
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // let is constant
        let diceArray = [
            UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"),
            UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")
        ]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        
       
    }
    

}
 
