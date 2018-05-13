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
    @IBOutlet weak var leftImageView : UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func dealTapped (sender: UIButton) {
        
        //randomize right number from 2 to 10
        let rightRandNo = arc4random_uniform(9) + 2
        
        rightImageView.image = UIImage(named: "card\(rightRandNo)")
        
        let leftRandNo = arc4random_uniform(9) + 2
        //randomize left number from 2 to 10
        
        leftImageView.image = UIImage(named: "card\(leftRandNo)")
        
    }
}

