//
//  OnBoardingViewController.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 18/05/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit

class OnBoardingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func LastBtn(_ sender: UIButton) {
        Core.shared.setIsNotUser()
                   dismiss(animated: true, completion: nil)
                             return
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
