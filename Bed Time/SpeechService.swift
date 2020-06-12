//
//  SpeechService.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 12/06/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import AVFoundation
import UIKit

class SpeechService{
    
    let speechSynthizer = AVSpeechSynthesizer()
    
    func say(_ phrase:String){
        
        guard UIAccessibility.isVoiceOverRunning else {
            return
        }
        
        let utterenece = AVSpeechUtterance(string: phrase)
        let langCode = "en-EN".localized
        utterenece.voice = AVSpeechSynthesisVoice(language: langCode)
        utterenece.rate = 0.4

        utterenece.preUtteranceDelay = 5
        speechSynthizer.speak(utterenece)
      
        
    }
    func say2(_ phrase:String){
        
        guard UIAccessibility.isVoiceOverRunning else {
            return
        }
        
        let utterenece = AVSpeechUtterance(string: phrase)
        let langCode = "en-EN".localized
        utterenece.voice = AVSpeechSynthesisVoice(language: langCode)
        utterenece.rate = 0.4

        utterenece.preUtteranceDelay = 2
        speechSynthizer.speak(utterenece)
      
        
    }
}

extension String{
    var localized : String{
        return NSLocalizedString(self, comment: "")
    }
}
