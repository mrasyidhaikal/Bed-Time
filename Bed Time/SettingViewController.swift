//
//  SettingViewController.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 15/06/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
  let speechService = SpeechService()
    override func viewDidLoad() {
        super.viewDidLoad()
      
     
       
    }
    override func viewDidAppear(_ animated: Bool) {
           speechService.say2("This is the settings tab, here has reminders to sleep, and also has info about this app, its position in the middle of the screen")
    }
    

   

}
