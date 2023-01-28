//
//  ViewController.swift
//  Piano
//
//  Created by Nick Khachatryan on 06.10.2020.
//  Copyright © 2020 Nick Khachatryan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressedNotes(_ sender: UIButton) {
        
        
        
//        print(sender.tag)
//        print(sender.alpha)
//        print(sender.currentTitle)
//        print(sender.titleLabel?.text)
        
        
//        if sender.tag == 1 {
//            playMusic(nameNote: "Do")
//        } else if sender.tag == 2 {
//            playMusic(nameNote: "Re")
//        } else if sender.tag == 3 {
//            playMusic(nameNote: "Mi")
//        }
        
        playMusic(nameNote: sender.currentTitle!)
        print(sender.currentTitle!)
        
        
       
//        var count = 1
//
//        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
//            print("Timer\(count)")
//            count += 1
//        }
        
//        if Bundle.main.url(forResource: "Mi", withExtension: "mp3") != nil {
//           print(Bundle.main.url(forResource: "Mi", withExtension: "mp3"))
//        } else {
//             print("Нет такого файла.")
//
//        }
        
        
        
//        print("before")
//        guard let guardureal = Bundle.main.url(forResource: "Do", withExtension: "mp3") else {
//            print("Error")
//            return
//        }
//
//        print("after")
//        print(guardureal)
        
        

                
    }

    
    func playMusic(nameNote : String){
        
//        guard let ureal = Bundle.main.url(forResource: "Do", withExtension: "mp3")  else {
//          print("Error")
//            return
//        }
        guard let ureal = Bundle.main.url(forResource: nameNote , withExtension: "mp3") else {
            return
        }
          
        
//        player = try! AVAudioPlayer(contentsOf: ureal)
//
//        player?.play()
        
        
        let audioSession = AVAudioSession.sharedInstance()

        do {
            try audioSession.setCategory(.playback, mode: .default)
             try audioSession.setActive(true, options: .notifyOthersOnDeactivation)
             player = try AVAudioPlayer(contentsOf: ureal)
            player?.play()
           } catch  {
            print("Error")
           }

    }
    
}

