//
//  ViewController.swift
//  Test User Interaction
//
//  Created by Derrick Thai on 9/22/17.
//  Copyright © 2017 Derrick Thai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var blockingView: UIView!
    @IBOutlet weak var toggle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blockingView.backgroundColor = UIColor.red
        blockingView.isUserInteractionEnabled = false
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("TAP \(Calendar.current.component(.nanosecond, from: Date()))")
    }
    
    @IBAction func toggleUserInteractionEnabled(_ sender: Any) {
        if blockingView.isUserInteractionEnabled {
            blockingView.isUserInteractionEnabled = false
            blockingView.backgroundColor = UIColor.red
        } else {
            blockingView.isUserInteractionEnabled = true
            blockingView.backgroundColor = UIColor.green
        }
    }
    
}

