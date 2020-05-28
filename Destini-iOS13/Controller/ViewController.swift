//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userinput = sender.currentTitle!
        
        // compares user response and updates the story index array
        storyBrain.checkUserAnswer(userinput)
        // Updates the user info
        updateView()
    }
    
    func updateView() {
        // get the choices for a specific index in the array of stories
        let choice1 = storyBrain.getChoice1()
        let choice2 = storyBrain.getChoice2()
        storyLabel.text = storyBrain.getQuestions()
        
        choice1Button.setTitle(choice1, for: .normal)
        choice2Button.setTitle(choice2, for: .normal)
        
    }
    
}

