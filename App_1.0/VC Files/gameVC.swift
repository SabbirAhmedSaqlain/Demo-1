//
//  gameVC.swift
//  App_1.0
//
//  Created by Sabbir Ahmed on 5/11/18.
//  Copyright © 2018 Sabbir  Ahmed. All rights reserved.
//

import UIKit

class gameVC: UIViewController {
    
    var currentValue = 50
    var targetValue = 100
    var roundCount = 1
    var score = 0
    var difference = 0
    
    
    
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startNewRound()
        updateAllLabel()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        currentValue = lroundf(sender.value)
        //   print(" Value: \(sender.value) and currentValue: \(currentValue)")
        
    }
    
    
    func startNewRound() {
        targetValue = Int(arc4random_uniform(UInt32(100))) + 1
        
        
    }
    func updateAllLabel(){
        targetLabel.text = "\(targetValue)"
        scoreLabel.text = "\(score)"
        roundLabel.text = "\(roundCount)"
    }
    
    func restartGame(){
        currentValue = 50
        targetValue = 100
        roundCount = 1
        score = 0
        difference = 0
        startNewRound()
        updateAllLabel()
    }
    
    
    
    @IBAction func hitme(_ sender: Any) {
        
        difference = 100 - abs(targetValue - currentValue)
        let msg = "Target Value: \(targetValue) Current value: \(currentValue)  Current score: \(difference)"
        
        let txt = UIAlertController(title: "Score", message: msg, preferredStyle: .alert)
        let data = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        
        
        txt.addAction(data)
        
        present(txt, animated: true, completion: nil)
        
        score += difference
        roundCount += 1
        startNewRound()
        updateAllLabel()
        
        
    }
    
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func restart(_ sender: Any) {
        restartGame()
        
    }
    
    
    
    
}
