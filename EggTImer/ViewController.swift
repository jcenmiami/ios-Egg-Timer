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

    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func subtract10(_ sender: Any) {
        time -= 10
        secondOutput.text = String(time)
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        timer.invalidate()
        time = 210
        secondOutput.text = String(time)
    }
    
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

