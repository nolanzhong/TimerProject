//
//  ViewController.swift
//  TimerProject
//
//  Created by Nolan Zhong on 1/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 0

    @IBOutlet weak var timeLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 10
        timeLable.text = "Time: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunc() {
        
        timeLable.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLable.text = "Timer Done"
        }
    }

    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked")
    }
    
}

