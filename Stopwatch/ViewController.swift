//
//  ViewController.swift
//  Stopwatch
//
//  Created by Linden Schrage on 8/3/16.
//  Copyright © 2016 Linden Schrage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func startButton(sender: AnyObject) {
        stopwatchLabel.text = "start"
    }
    @IBOutlet weak var stopwatchLabel: UILabel!
    
    @IBAction func stopButton(sender: AnyObject) {
        stopwatchLabel.text = "stop"
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

