//
//  Cat1ViewController.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 26/05/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit

class Cat1ViewController: UIViewController {
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var Tutor: UILabel!
    @IBOutlet weak var StartBtn: UIButton!
    @IBOutlet weak var Next: UIButton!
    
    @IBOutlet weak var Back: UINavigationItem!
    @IBOutlet weak var Finish: UIButton!
    @IBOutlet weak var Tutor2: UILabel!
     @IBOutlet weak var Tutor3: UILabel!
     @IBOutlet weak var Tutor4: UILabel!
     let speechService = SpeechService()
    @IBOutlet weak var Judul: UILabel!
    var countDown = 10
       var imageInt = 0
       var timer = Timer()
     override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            Tutor.accessibilityLabel = ""
        label.accessibilityLabel = ""
        dataLabel.accessibilityLabel = ""
            Judul.accessibilityLabel = ""
        speechService.say2("This Exercises is called Side Strech, how to do it, first Bend one leg and place both of your hands on your knee, secondly Bring your knee to your chest, third Breathe deeply as you use your hands to draw your shoulders forward, then Hold for 30 second, then repeat on the other side for 30 seconds , if you already understand say tab start , or press the button below.  ")
                       Tutor2.accessibilityLabel = ""
                       Tutor3.accessibilityLabel = ""
                       Tutor4.accessibilityLabel = ""
            self.dataLabel.text = "\(countDown)"
        imageview.image = UIImage.gifImageWithName("cat1-1")
            imageInt = 1
            label.text = "\(imageInt) / 5"
        }

        @IBAction func startCount(_ sender: UIButton) {
            StartBtn.isHidden = true
            // when start button click voice over
            speechService.say2("CountDown Start From 60 second")
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDownMethod), userInfo: nil, repeats: true)
        }
        
        @IBAction func next(_ sender: UIButton) {
            imageInt += 1
            StartBtn.isHidden = false
            Next.isHidden = true
            countDown = 10
            dataLabel.text = "10"
            self.imageGallery()
            label.text = "\(imageInt) / 5"
            
        }
        
        func imageGallery() {
           
            if imageInt == 1 {
               imageview.image = UIImage.gifImageWithName("cat1-1")
            
            }
            if imageInt == 2 {
                Judul.accessibilityLabel = ""
                Tutor.accessibilityLabel = ""
                           Tutor2.accessibilityLabel = ""
                           Tutor3.accessibilityLabel = ""
                           Tutor4.accessibilityLabel = ""
                  speechService.say2( "This exercise is called a spinal twist, how to do it, first Position your back on the floor, spread both hands over your side, second Slowly cross your left leg over the right side of your body and allow it to fall naturally towards the floor, third For a deeper twist, turn your head to the left, and Repeat on the other side ., if you already understand say the start tab or press the button below ".localized)
                
                Judul.text = "Spinal Twist"
                imageview.image = UIImage.gifImageWithName("cat1-2")
                Tutor.text = "Position your back on the floor, spread both hands over your side"
                Tutor2.adjustsFontSizeToFitWidth = true
                Tutor2.text = "Slowly cross your left leg over the right side of your body and allow it to fall naturally towards the floor."
                Tutor3.text = "For a deeper twist, turn your head to the left"
                Tutor4.text = "Repeat on the other side."
            }
            if imageInt == 3 {
                Judul.accessibilityLabel = ""
                   speechService.say2( "This Exercises is called a Lunge, how to do it, first Extend your left arm above your head while seated, Keep your left arm above your ear then place your right hand on the floor and lean to the right, holding the left arm, third Hold for 30 second, then repeat on the other side for 30 second. if you already understand say the start tab or press the button below".localized)
                Tutor.accessibilityLabel = ""
                           Tutor2.accessibilityLabel = ""
                           Tutor3.accessibilityLabel = ""
                           Tutor4.accessibilityLabel = ""
                Judul.text = "Lunge"
               imageview.image = UIImage.gifImageWithName("cat1-3")
                Tutor.text = "Extend your left arm above your head while seated"
                Tutor2.text = "Keep your left arm above your ear then place your right hand on the floor and lean to the right, holding the left arm"
                Tutor2.adjustsFontSizeToFitWidth = true
                Tutor3.text = "Hold for 30 second, then repeat on the other side for 30 second."
                Tutor4.text = ""
            }
            if imageInt == 4 {
                Judul.accessibilityLabel = ""
                 speechService.say2( "This Exercises is called Knee To Chest, how to do it, first From a standing or kneeling position, place one foot in front of the other and bend your knees to the lunge, second Allow your opposite knee to support some of your weight, third Concentrate on keeping your spine straight and chest open, then repeat on the other side. if you already understand say the start tab or press the button below".localized)
                Tutor.accessibilityLabel = ""
                           Tutor2.accessibilityLabel = ""
                           Tutor3.accessibilityLabel = ""
                           Tutor4.accessibilityLabel = ""
                Judul.text = "Knee To Chest"
                imageview.image = UIImage.gifImageWithName("cat1-4")
                Tutor.text = "From a standing or kneeling position, place one foot in front of the other and bend your knees to lunge."
                Tutor2.text = "Allow your opposite knee to support some of your weight."
                Tutor3.text = "Concentrate on keeping your spine straight and chest open, then repeat on the other side."
                Tutor4.text = ""
            }
            if imageInt == 5 {
                Judul.accessibilityLabel = ""
                speechService.say2("This Exercises is called Butterfly Pose, how to do it, first Sitting with your legs straight in front of you, bring the soles of your feet together, second Keep your spine as straight as you bring your feet towards your body, third Breathe deeply, focusing on lengthening your spine and opening your chest, then Rest in this pose to deepen the stretch. if you already understand say the start tab or press the button below")
                Tutor.accessibilityLabel = ""
                           Tutor2.accessibilityLabel = ""
                           Tutor3.accessibilityLabel = ""
                           Tutor4.accessibilityLabel = ""
                Judul.text = "Butterfly Pose"
                imageview.image = UIImage.gifImageWithName("cat1-5")
            Tutor.text = "Sitting with your legs straight in front of you, bring the soles of your feet together."
            Tutor2.text = "Keep your spine as straight as you bring your feet towards your body."
            Tutor3.text = "Breathe deeply, focusing on lengthening your spine and opening your chest."
            Tutor4.text = "Rest in this pose to deepen the stretch."
                Next.isHidden = true
            }
          
        }
        
        @objc func countDownMethod(){
            countDown -= 1
            dataLabel.text = "\(countDown)"
            if dataLabel.text == "0" {
                timer.invalidate()
                Next.isHidden = false
                speechService.say2("the Exercises is finished, press the next button below, or say tab next , to start a new excersise")
                StartBtn.isHidden = true
                if imageInt == 5{
                    Finish.isHidden = false
                }
                
            }
              if dataLabel.text == "5" {
                 playSound(sound: "CountDown", type: "mp3")
            }
        }
}

