//
//  ViewController.swift
//  Word Garden
//
//  Created by Kyle Burns on 2/1/19.
//  Copyright © 2019 t. kyle burns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var flowerImageView: UIImageView!
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guessLetterButton.isEnabled = false
        playAgainButton.isHidden = true
     
    }

    func updateUIAfterGuess(){
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = ""
    }
    
    @IBAction func guessLetterFieldChanged(_ sender: UITextField) {
        print("Hey! The guessedLetterFieldChanged")
        if let letterGuessed = guessedLetterField.text?.last {
            guessedLetterField.text = "/(letterGuessed)"
            guessLetterButton.isEnabled = true
        } else {
            // disable the button if I dont have a single character in guessedLetterFirled
            guessLetterButton.isEnabled = false
        }
        
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
       
        updateUIAfterGuess()

    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        updateUIAfterGuess()
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
}

