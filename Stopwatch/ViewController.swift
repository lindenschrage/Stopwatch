//
//  ViewController.swift
//  Stopwatch
//
//  Created by Linden Schrage on 8/3/16.
//  Copyright © 2016 Linden Schrage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var counter = 0
    
    @IBOutlet weak var stopwatchLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    
    @IBAction func startTime(sender: AnyObject) {
        alternatebuttons()
        validateTimer()
        
    }
    
    @IBAction func stopButton(sender: AnyObject) {
        alternatebuttons()
        timer.invalidate()
        counter = 0
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        stopButton.hidden = true
        stopButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func alternatebuttons() {
        startButton.hidden = !startButton.hidden
        startButton.enabled = !startButton.enabled
        stopButton.hidden = !stopButton.hidden
        stopButton.enabled = !stopButton.enabled
    }
    func validateTimer() {
        let repeatingFunction = #selector(ViewController.updateTime)
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: repeatingFunction, userInfo: nil, repeats: true)
    }
    func updateTime() {
        counter+=1
        stopwatchLabel.text = "\(counter)"
    }

}

