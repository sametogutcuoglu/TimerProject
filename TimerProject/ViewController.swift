//
//  ViewController.swift
//  TimerProject
//
//  Created by macOS on 13.04.2022.
//

import UIKit

class ViewController: UIViewController {
    var counter = 10
    var timer = Timer()

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        
        
        
    }
    
    @objc func timerFunc (){
        
        label.text = "Time :\(counter)"
        counter -= 1
        
        if(counter <= 0){
            timer.invalidate()
            label.text = "Time's Over"
        }
    }


    @IBAction func Button(_ sender: Any) {
        print("Button Click")
        
    }
}

