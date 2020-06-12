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
       
     speeceService.say( "welcome to the workout feature, here are 3 Excersises categories , You can choose one of the categories, if your voice control is on ,say tab category 1 or 2 or 3".localized)

        Cat1.accessibilityLabel = "Category 1 , 5 Minutes Excersises and 5 type Excersises ,tab For Detail"
        Cat2.accessibilityLabel = "Category 2 , 7 Minutes Excersises and 7 type Excersises ,tab For Detail"
        Cat3.accessibilityLabel = "Category 3 , 9 Minutes Excersises and 9 type Excersises ,tab For Detail"
    }

   
      
 
    
    
  

}
