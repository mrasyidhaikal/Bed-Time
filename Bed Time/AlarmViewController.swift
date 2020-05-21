//
//  AlarmViewController.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 20/05/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit

class AlarmViewController: UIViewController {

    @IBOutlet weak var date: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
       let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        let stringFromDate: String = formatter.string(from: self.date.date) as String
        
        
       
    }
    

    

}
