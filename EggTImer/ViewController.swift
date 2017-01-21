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
    
    @IBOutlet weak var secondOutput: UILabel!
    
    func processTimer() {
        print("A second has passed.")
    }

    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func subtract10(_ sender: Any) {
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
    }
    
    @IBAction func add10(_ sender: Any) {
        
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

