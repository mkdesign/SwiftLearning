//
//  ViewController.swift
//  CodeWithChrisTour
//
//  Created by mehrad kavian on 4/29/18.
//  Copyright © 2018 MrKavian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var rightScore = 0
   
    @IBOutlet weak var leftImageView : UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    var leftScore = 0
    
    let cardNames = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func dealTapped (sender: UIButton) {
        
        //randomize right number from 0 to 12
        let rightRandNo = Int(arc4random_uniform(13))
        
        rightImageView.image = UIImage(named: cardNames[rightRandNo])
        
        //randomize left number from 0 to 12
        let leftRandNo = Int(arc4random_uniform(13))
        
        
        leftImageView.image = UIImage(named: cardNames[leftRandNo])
        
        if leftRandNo > rightRandNo {
            //left card wins
            
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        }
        
        else if rightRandNo == leftRandNo {
            //it's a tie
        }
        
        else {
            //right card wins
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
        }
        
    }
}

