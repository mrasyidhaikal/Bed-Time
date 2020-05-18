//
//  ViewController.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 11/05/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit
import HealthKit
class ViewController: UIViewController {
    
    
 let healthStore = HKHealthStore()
 var countDown = 30
 var timer = Timer()
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
    
    @IBOutlet weak var VwAge: UIView!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblAge: UILabel!
   
    @IBOutlet weak var btnGetData: UIButton!
    
    
    @IBAction func Permission(_ sender: UIButton) {
         btnGetData.isHidden = false
        self.Auth()
    }
    @IBAction func Get(_ sender: UIButton) {
        let (age,gender) = self.readProfile()
        self.lblAge.text = "\(age!)"
        self.lblGender.text = "\(gender!)"
        VwAge.isHidden = false
       
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

class Core{
    static let shared = Core()
    
    func isNewUser() ->Bool {
        return !UserDefaults.standard.bool(forKey: "isNewUser")
    }
    func setIsNotUser(){
        UserDefaults.standard.set(true, forKey: "isNewUser")
    }
}


