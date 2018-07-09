//
//  ViewController.swift
//  Colorizer
//
//  Created by admin on 05.07.2018.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var backGround: UIView!
    var counter = 6
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       counterLabel.text = ""
        
    }

    @objc func timerRun() {
        counter-=1
        counterLabel.text = "\(counter)"
        if counter == 0 {
            timer?.invalidate()
            timer = nil
            backGround.backgroundColor = UIColor.lightGray
            }
       }
    
    func timerSheduler() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerRun), userInfo: nil, repeats: true)
        counter = 6    }
    
    @IBAction func redButtonPressed(_ sender: Any) {
        timer?.invalidate();
        backGround.backgroundColor = UIColor.red
        timerSheduler()
    }
    
    @IBAction func blueButtonPressed(_ sender: Any) {
        timer?.invalidate();
        backGround.backgroundColor = UIColor.blue
        timerSheduler()
    }
    
    @IBAction func greenButtonPressed(_ sender: Any) {
        timer?.invalidate();
        backGround.backgroundColor = UIColor.green
        timerSheduler()
    }
}

