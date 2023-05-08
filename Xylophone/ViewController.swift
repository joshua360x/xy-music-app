//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print("------------------------->")
        print("this is the title : \(sender.titleLabel?.text))")
        playSound(soundToPlay: sender.titleLabel?.text ?? "C")
    }
    
    func playSound(soundToPlay: String) {
        let url = Bundle.main.url(forResource: soundToPlay, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


