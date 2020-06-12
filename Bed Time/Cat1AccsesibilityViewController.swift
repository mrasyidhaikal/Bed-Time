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
       
        LblCat1.accessibilityLabel = "Category 1 Is Selected ,Do this stretch to release the tension that has accumulated from the while increasing your sleep at the same time! , in this screen there are 5 exercises namely side stretch, spinal twist, lungle, knee to chest and butterfly pose. You can scroll down to press the start button or say start "
        Caption.accessibilityLabel = ""
        Type1.accessibilityLabel = "Side Strech"
    }
    
  
   

}
