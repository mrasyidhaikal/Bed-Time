//
//  ReminderViewController.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 08/06/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit
import UserNotifications

class LocalNotificationManager
{
    var notifications = [Notification]()

}
class ReminderViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var TimeControl: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TimeControl.datePickerMode = .time
    }
    func DelNotif(){
          UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
      }
    @IBAction func Save(_ sender: Any) {
        self.DelNotif()
         let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert,.sound]){ (granted,error) in
                           
                      }
        let comp = TimeControl.calendar.dateComponents([.hour, .minute], from: TimeControl.date)
        
          UNUserNotificationCenter.current().delegate = self
        
        var dateComponents = DateComponents()
        dateComponents.hour = comp.hour
        dateComponents.minute = comp.minute
        
        let content  = UNMutableNotificationContent()
               content.title = "Haii"
               content.sound = .default
               content.body = "My Lonngggg body My Lonngggg body My Lonngggg body My Lonngggg body"
        
      let triger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let uuidString = UUID().uuidString
                        let request =  UNNotificationRequest(identifier: uuidString, content: content, trigger: triger)
                        
                        center.add(request) { (error) in
                            // check error
                        }
        

    }
    
  
}
extension ReminderViewController : UNUserNotificationCenterDelegate{
    func userNotificationCenter(_ center:UNUserNotificationCenter, willPresent notification:
        UNNotification,withCompletionHandler completionHandler: @escaping
        (UNNotificationPresentationOptions) -> Void){
        completionHandler([.sound,.alert])
    }
    
}
