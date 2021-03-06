//
//  ViewController.swift
//  Plumadore Homework #6
//
//  Created by Ainsley Plumadore on 5/2/20.
//  Copyright © 2020 Ainsley Plumadore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var upVoteCounter: UILabel!
    @IBOutlet weak var downVoteCounter: UILabel!
    @IBOutlet weak var winner: UILabel!
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
       
        upVoteCounter.text = String((parent as! TBViewController).yesVote)
        downVoteCounter.text = String((parent as! TBViewController).noVote)
        
        if (parent as! TBViewController).yesVote > (parent as! TBViewController).noVote
        {
            winner.text = "Yes!"
        } else {
            winner.text = "No!"
        }
        
        
    }
    
    
    
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

