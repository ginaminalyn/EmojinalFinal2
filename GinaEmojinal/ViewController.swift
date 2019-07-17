////
////  ViewController.swift
////  GinaEmojinal
////
////  Created by Ginalyn Mina on 7/11/19.
////  Copyright © 2019 Ginalyn Mina. All rights reserved.
////
//
import UIKit

class ViewController: UIViewController {
    let emojis = ["🙉": "random", "🎥": "movies", "🍔": "food places", "🏖": "outdoors"]
    let customMessages = [
        "random": ["Let's make breakfast together!", "Let's do a Laugh Challenge!", "Let's do something we've never done before!", "Let's make dinner together!", "Let's exercise together!", "Let's watch a random video together!"],
        "movies": ["Let's watch a comedy", "Let's watch a rom-com", "Let's watch action/adventure", "Let's watch sci-fi", "Let's do whatever!", "Let's Netflix it!", "Let's Hulu it!", "Let's HBO it!", "Let's Amazon Prime it!", "Let's Youtube it!"],
        "food places": ["Let's eat ramen", "Let's eat hotpot", "Let's eat noodles", "Let's eat pizza", "Let's eat burgers", "Let's eat thai", "Let's eat chicken", "Let's eat whatever!"],
        "outdoors": ["Let's go to the beach!", "Let's go for a hike!", "Let's go to the park!", "Let's do whatever!"]
    ]
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(_ sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        let emotionArray = customMessages[emojis[selectedEmotion!]!]
        //I2: this second
        let random = Int.random(in: 0..<emotionArray!.count)
        let emojiMessage = emotionArray?[random]
        //I2: this first
        //I2 extension: add the emotionArray?[random] piece in lieu of customMessages[emojis[selectedEmotion!]!]?[0]
        let alertController = UIAlertController(title: "What's the plan?", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        //I2: this third
        
        
        alertController.addAction(UIAlertAction(title:"OK", style:UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        }
    
    }


