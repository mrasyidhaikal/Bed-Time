//
//  AccsessViewController.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 09/06/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit

class AccsessViewController: UIViewController {

    @IBOutlet weak var Cat3: UIView!
    @IBOutlet weak var Cat2: UIView!
    @IBOutlet weak var Cat1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        Cat1.accessibilityLabel = "Category 1 tab For Detail"
        Cat2.accessibilityLabel = "Category 2 tab For Detail"
        Cat3.accessibilityLabel = "Category 3 tab For Detail"
    }
    

  

}
