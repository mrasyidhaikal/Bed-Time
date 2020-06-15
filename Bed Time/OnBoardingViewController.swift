//
//  OnBoardingViewController.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 18/05/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit
import UserNotifications
import HealthKit
class OnBoardingViewController: UIViewController {
     let healthStore = HKHealthStore()
    
    @IBOutlet weak var Welcome: UILabel!
    @IBOutlet weak var VwAge: UIView!
       @IBOutlet weak var lblGender: UILabel!
       @IBOutlet weak var lblAge: UILabel!
      @IBOutlet weak var btnPermission: UIButton!
    @IBOutlet weak var btnFinish: UIButton!
       @IBOutlet weak var btnGetData: UIButton!
   let speechService = SpeechService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func LastBtn(_ sender: UIButton) {
        Core.shared.setIsNotUser()
                   dismiss(animated: true, completion: nil)
                             return
    }
    @IBAction func Permission(_ sender: UIButton) {
         btnGetData.isHidden = false
        btnPermission.isHidden = true
        let alert = UIAlertController(title: " 'Beti' Request Access", message: "Allow 'Beti' access to Health to Send and Share information", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Allow", style: .default, handler: { action in
           self.Auth()
          }))
           alert.addAction(UIAlertAction(title: "Don't Allow", style: .cancel, handler: { action in
            print("Gagal")
                 }))

          self.present(alert, animated: true)
        
        
      
    }
    @IBAction func Get(_ sender: UIButton) {
        let (age,gender) = self.readProfile()
        self.lblAge.text = "\(age!)"
        self.lblGender.text = "\(gender!)"
        VwAge.isHidden = false
        btnGetData.isHidden = true
        btnFinish.isHidden = false
        
       
    }
    
    func readProfile() -> (age:Int?,gender:String?)
    {
        var age : Int?
        var gender : String?
       
        
        do{
           let calendar = Calendar.current
         let currentYear = calendar.component(.year, from: Date())
            if #available(iOS 10.0, *) {
                     let birth = try! healthStore.dateOfBirthComponents()
                     age = currentYear - birth.year!
                           
                  }
            else {
                //error
            }
            
        }catch {}
        
        do{
             if try! healthStore.biologicalSex().biologicalSex == HKBiologicalSex.female {
                     gender = "Female"
                   } else if try! healthStore.biologicalSex().biologicalSex == HKBiologicalSex.male {
                      gender = "Male"
                   } else if try! healthStore.biologicalSex().biologicalSex == HKBiologicalSex.other {
                      gender = "Other"
                   }
            
        }catch {}
        
        return (age,gender)
            
            
           
        }
    func Auth() {
            let HealthKitTypesToRead : Set <HKObjectType> = [
          
           HKObjectType.characteristicType(forIdentifier: .biologicalSex)!,
           HKObjectType.characteristicType(forIdentifier: .dateOfBirth)!,
           
        ]
            let healthKitTypesToWrite : Set<HKSampleType> = []
            if !HKHealthStore.isHealthDataAvailable() {
                print("Error occured")
                return
            }
            healthStore.requestAuthorization(toShare: healthKitTypesToWrite, read: HealthKitTypesToRead){ (success, error) in
            if !success {
                // Handle the error here.
            } else {
                print("Success")
                
                          
        }
            }
    }
  
}
