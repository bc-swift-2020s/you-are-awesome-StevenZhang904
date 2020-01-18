//
//  ViewController.swift
//  You are Awesome
//
//  Created by 张泽华 on 2020/1/18.
//  Copyright © 2020 张泽华. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("emojil😿")
        messageLabel.text="You are fabulous."
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("emoji😁")
        messageLabel.text="You are Awesome."
    }
    
}

