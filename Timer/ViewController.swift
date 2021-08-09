//
//  ViewController.swift
//  Timer
//
//  Created by Alican Kurt on 8.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create timer and select a function for doing anything
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(startTime), userInfo: nil, repeats: true)
    }


    @IBAction func timerStartClick(_ sender: Any) {
        timer.invalidate()
        timerLabel.text = "Timer stopped on \(counter). second"
    }
    
    @objc func startTime(){
        timerLabel.text = "\(counter)"
        counter += 1
        
    }
}

