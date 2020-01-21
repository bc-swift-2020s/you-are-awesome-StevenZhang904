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
    
    @IBOutlet weak var imageView: UIImageView!
    
    var messages = ["You are awesome","You are great","You are fantanstic","Fabulous?That's you"]
    var number=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text="You are fabulous."
    }
    
    @IBAction func /* changing the words shown*/
    
        messageButtonPressedForWords(_ sender: UIButton) {
        messageLabel.text = messages[number]
        number=number+1
        if(number == messages.count){
            number=0
        }
        
    }
    
    @IBAction func messageButtonPressedFirst(_ sender: UIButton) {
        messageLabel.text="You are Awesome."
        imageView.image=UIImage(named: "image0")
    }
    
    
    @IBAction func messageButtonPressedSecond(_ sender: UIButton) {
        messageLabel.text="You are great."
    }
    
    @IBAction func RandomMessgesAndPictures(_ sender: UIButton) {
        messageLabel.text=messages[Int.random(in: 0...messages.count-1)]
        imageView.image=UIImage(named:"image\(Int.random(in: 0...9))")
        
    }
    
    
    
    
}





