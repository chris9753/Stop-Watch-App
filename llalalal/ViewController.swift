//
//  ViewController.swift
//  StopWatch
//
//  Created by Christopher Da Silva on 2014-12-28.
//  Copyright (c) 2014 Christopher Da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer=NSTimer()
    @IBOutlet weak var Time: UILabel!
    var count=0
    
    
    
    
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
       Play.enabled=false
        
    }
    @IBOutlet weak var Play: UIBarButtonItem!

    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
        Play.enabled=true
        
    }
    @IBAction func Reset(sender: AnyObject) {
        timer.invalidate()
        count = 0
        Time.text="0"
        Play.enabled=true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    
        func result(){
        count++
        Time.text = "\(count)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

