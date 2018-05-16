//
//  ViewController.swift
//  WarGame
//
//  Created by mehrad kavian on 5/15/18.
//  Copyright © 2018 MrKavian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightCard: UIImageView!
    @IBOutlet weak var leftCard: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var cardsNames = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
    
    var leftScore = 0
    var RightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DealBtnPressed(_ sender: Any) {
        print("fuckin pressed!")
        let leftRandNo = Int(arc4random_uniform(13))
        
        let rightRandNo = Int(arc4random_uniform(13))
        
        leftCard.image = UIImage(named: cardsNames[leftRandNo])
        rightCard.image = UIImage(named: cardsNames[rightRandNo])
        
        if leftRandNo > rightRandNo {
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        }
            
        else if leftRandNo == rightRandNo {
            
        }
        
        else {
            RightScore += 1
            
            rightScoreLabel.text = String(RightScore)
        }
        
    }

}

