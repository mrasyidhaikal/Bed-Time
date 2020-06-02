//
//  playSound.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 02/06/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import Foundation
import  AVFoundation
var audioPlayer: AVAudioPlayer?

func playSound(sound:String, type:String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            
        }
        catch{
            print("Audio Error")
        }
    }
}
func stopSound(sound:String, type:String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.stop()
            
        }
        catch{
            print("Audio Error")
        }
    }
}

