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
    let totalNumberOfSounds=4
    var audioPlayer = AVAudioPlayer()
    var soundNumber = -1
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     //  messageLabel.text="You are fabulous."
    }
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
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
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int{
         var newNumber: Int
                repeat{
                    newNumber = Int.random(in: 0...upperLimit)
                }while originalNumber==newNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
         let messages = ["You are awesome",
                         "You are great",
                         "You are fantanstic",
                         "Fabulous?That's you",
                         "You've got the design skills"]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageView.image=UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        playSound(name: "Sound\(soundNumber)")
        
    }
    

    
    
    
}
  




