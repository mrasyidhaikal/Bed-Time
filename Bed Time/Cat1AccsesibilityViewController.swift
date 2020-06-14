//
//  Cat1AccsesibilityViewController.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 11/06/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit

class Cat1AccsesibilityViewController: UIViewController {

    @IBOutlet weak var Caption: UILabel!
    @IBOutlet weak var Type1: UIView!
    @IBOutlet weak var Type2: UIView!
    @IBOutlet weak var Type3: UIView!
    @IBOutlet weak var Type4: UIView!
    @IBOutlet weak var Type5: UIView!
    @IBOutlet weak var LblCat1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        LblCat1.accessibilityLabel = "Category 1 Is Selected ,this is for Muscle Stretches,Release built up tension from the day while also boosting your sleep at the same time , there are 5 types of exercises namely side strech, spinal twist, lunge, knee to chest, and butterfly pose, for start the exercise scroll down , then press the start button , or you can use voice control , by saying tab start"
        Caption.accessibilityLabel = ""
        Type1.accessibilityLabel = "Side Strech"
    }
    
  
   

}
