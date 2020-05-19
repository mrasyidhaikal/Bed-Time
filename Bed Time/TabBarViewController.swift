//
//  TabBarViewController.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 19/05/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
              super.viewDidLayoutSubviews()
              if Core.shared.isNewUser(){
                  //show onboarding
                  let vc = storyboard?.instantiateViewController(identifier: "control") as! PageControlViewController
                  vc.modalPresentationStyle = .fullScreen
                  present(vc, animated: true)
              }
          }

    
}

class Core{
    static let shared = Core()
    
    func isNewUser() ->Bool {
        return !UserDefaults.standard.bool(forKey: "isNewUser")
    }
    func setIsNotUser(){
        UserDefaults.standard.set(true, forKey: "isNewUser")
    }
}
