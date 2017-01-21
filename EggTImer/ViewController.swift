//
//  ViewController.swift
//  EggTImer
//
//  Created by JUAN RAMIREZ on 1/21/17.
//  Copyright © 2017 EZ IT Apps, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 210
    
    @IBOutlet weak var secondOutput: UILabel!
    
    // Decrease the timer every second.
    func decreaseTimer() {
        
        // Check if timer is greater than 0.
        // Update timer subtracting every second.
        if time > 0 {
            time -= 1
            secondOutput.text = String(time)
        } else {
            timer.invalidate()
        }
        
    }

    // Pause the timer.
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    // Start the timer.
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    // Subtract 10 seconds from the timer
    // Update the text on screen
    @IBAction func subtract10(_ sender: Any) {
        if time > 10 {
            time -= 10
            secondOutput.text = String(time)
        }
        
        
    }
    
    // Reset the timer to 210
    // Pause the timer.
    // Update the text on screen
    @IBAction func resetButton(_ sender: Any) {
        timer.invalidate()
        time = 210
        secondOutput.text = String(time)
    }
    
    // Add 10 seconds to the timer.
    // Update the text on screen
    @IBAction func add10(_ sender: Any) {
        time += 10
        secondOutput.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

