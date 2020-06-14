//
//  AccsessViewController.swift
//  Bed TimeAccsessViewController
//
//  Created by Muhammad Rasyid khaikal on 09/06/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit

class AccsessViewController: UIViewController {

    @IBOutlet weak var Cat3: UIView!
    @IBOutlet weak var Cat2: UIView!
    @IBOutlet weak var Cat1: UIView!
   
    @IBOutlet weak var Choose: UINavigationItem!
    let speeceService = SpeechService()
    override func viewDidLoad() {
        super.viewDidLoad()
       
    

        Cat1.accessibilityLabel = "Category 1 ,for Muscle Stretches ,  5 Minutes exercise and 5 type exercises ,tab For Detail"
        Cat2.accessibilityLabel = "Category 2 ,for Before Bed Exercises ,  7 Minutes Exercises and 7 type Exercises ,tab For Detail"
        Cat3.accessibilityLabel = "Category 3 ,For Calming Yoga Moves ,9 Minutes Exercises and 9 type Exercises ,tab For Detail"
    }
    override func viewDidAppear(_ animated: Bool) {
         speeceService.say( "welcome to the workout feature, here are 3 Exercises categories , You can choose one of the categories, if your voice control is on ,say tab category 1 or 2 or 3".localized)
    }
   
      
 
    
    
  

}
