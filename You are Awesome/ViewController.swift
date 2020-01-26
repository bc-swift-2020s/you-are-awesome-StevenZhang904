//
//  ViewController.swift
//  You are Awesome
//
//  Created by 张泽华 on 2020/1/18.
//  Copyright © 2020 张泽华. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
   
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages=9
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     //  messageLabel.text="You are fabulous."
    }
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
         let messages = ["You are awesome",
                         "You are great",
                         "You are fantanstic",
                         "Fabulous?That's you",
                         "You've got the design skills"]
        var newMessageNumber: Int
        repeat{
            newMessageNumber = Int.random(in: 0...messages.count-1)
        }while messageNumber==newMessageNumber
        messageNumber=newMessageNumber
        messageLabel.text = messages[messageNumber]
        var newImageNumber: Int
        repeat{
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        }while imageNumber == newImageNumber
        imageNumber=newImageNumber
        imageView.image=UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "Sound0"){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch{
                print("Error: \(error.localizedDescription)Couldn't initialize AVAudioPlayer object")
            }
        }else{
            print("Error: Couldn't read data from file Sound0 ")
        }
    }
    

    
    
    
}





