//
//  ViewController.swift
//  Destination
//
//  Created by Ketan Choyal on 21/11/18.
//  Copyright © 2018 Ketan Choyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    var level = 0
    var previousPressedButton = 0
    
    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    
    
    let story2 = "He nods slowly, unphased by the question."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    
    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
    let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = story1
        answer1.setTitle(answer1a, for: .normal)
        answer2.setTitle(answer1b, for: .normal)
        
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        
         level = level + 1
        
        if level == 1 {
            
            if sender.tag == 1 {
                
                questionLabel.text = story3
                answer1.setTitle(answer3a, for: .normal)
                answer2.setTitle(answer3b, for: .normal)
                
                previousPressedButton = 1
                
            }
                
            else if sender.tag == 2 {
                
                questionLabel.text = story2
                answer1.setTitle(answer2a, for: .normal)
                answer2.setTitle(answer2b, for: .normal)
                
                previousPressedButton = 2
                
            }
            
        }
        if level == 2 {
            
            if previousPressedButton == 1 {
                
                if sender.tag == 1 {
                    
                    questionLabel.text = story6
                    
                    answer1.isEnabled = false
                    answer2.isEnabled = false
                    
                    answer1.isHidden = true
                    answer2.isHidden = true
                    
                }
                    
                else if sender.tag == 2 {
                    
                    questionLabel.text = story5
                    
                    answer1.isEnabled = false
                    answer2.isEnabled = false
                    
                    answer1.isHidden = true
                    answer2.isHidden = true
                    
                }
                
            }
            
            else if previousPressedButton == 2 {
                
                if sender.tag == 1 {
                    
                    questionLabel.text = story3
                    answer1.setTitle(answer3a, for: .normal)
                    answer2.setTitle(answer3b, for: .normal)
                    
                    previousPressedButton = 1
                    
                }
                    
                else if sender.tag == 2 {
                    
                    questionLabel.text = story4
                    
                    answer1.isEnabled = false
                    answer2.isEnabled = false
                    
                    answer1.isHidden = true
                    answer2.isHidden = true
                    
                }
                
            }
            
        }
        
        else if level == 3 && previousPressedButton == 1 {
            
            if sender.tag == 1 {
                
                questionLabel.text = story6
                
                answer1.isEnabled = false
                answer2.isEnabled = false
                
                answer1.isHidden = true
                answer2.isHidden = true
                
            }
                
            else if sender.tag == 2 {
                
                questionLabel.text = story5
                answer1.isEnabled = false
                answer2.isEnabled = false
                
                answer1.isHidden = true
                answer2.isHidden = true
                
            }
            
        }
        
    }
    
}

