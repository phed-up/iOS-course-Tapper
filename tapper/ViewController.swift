//
//  ViewController.swift
//  tapper
//
//  Created by skwong on 5/8/16.
//  Copyright © 2016 fedup. All rights reserved.
//

import UIKit

class ViewController: UIViewController

{
    
    var maxTaps = 0
    var currentTaps = 0
    
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var logoImg: UIImageView!
    
    @IBOutlet weak var coinButton: UIButton!
    @IBOutlet weak var tapLabel: UILabel!
   


    @IBAction func playAction(sender: UIButton!)
        {
        
            if textField.text != nil && textField.text != ""
            {
            playButton.hidden = true
            textField.hidden = true
            logoImg.hidden = true
            
            coinButton.hidden = false
            tapLabel.hidden = false
            
            maxTaps = Int(textField.text!)!
            currentTaps = 0
            tapLabel.text = "\(currentTaps) Taps"
            }
            
        }
    
    
    @IBAction func coinButtonTapped(sender: UIButton!)
        {
        currentTaps = currentTaps + 1
        tapLabel.text = "\(currentTaps) Taps"
            
            if currentTaps >= maxTaps
            {
                maxTaps = 0
                textField.text = ""
                
                playButton.hidden = false
                textField.hidden = false
                logoImg.hidden = false
                        
                coinButton.hidden = true
                tapLabel.hidden = true
            }
            
            
        
        }

}

    
//    func udateTapsLbl()
//    {
//    tapLabel.text = "\(currentTaps) Taps"
//    }
//    
//    func isGameOver() -> Bool
//    {
//        if currentTaps >= maxTaps
//        {
//            return true
//        }
//        else
//        {
//            return false
//        }
//    }
//    
//    
//    func restartGame()
//    {
//        maxTaps = 0
//        textField.text = ""
//        
//        playButton.hidden = false
//        textField.hidden = false
//        logoImg.hidden = false
//        
//        coinButton.hidden = true
//        tapLabel.hidden = true
//        
//    }
  
    
