//
//  Cat1ViewController.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 26/05/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit

class Cat3ViewController: UIViewController {
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var Tutor: UILabel!
    @IBOutlet weak var StartBtn: UIButton!
    @IBOutlet weak var Next: UIButton!
    
    @IBOutlet weak var Finish: UIButton!
    @IBOutlet weak var Tutor2: UILabel!
     @IBOutlet weak var Tutor3: UILabel!
     @IBOutlet weak var Tutor4: UILabel!
    
    @IBOutlet weak var Judul: UILabel!
    var countDown = 5
       var imageInt = 0
       var timer = Timer()
     override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            self.dataLabel.text = "\(countDown)"
            imageInt = 1
            label.text = "\(imageInt) / 9"
        }

        @IBAction func startCount(_ sender: UIButton) {
            StartBtn.isHidden = true
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDownMethod), userInfo: nil, repeats: true)
        }
        
        @IBAction func next(_ sender: UIButton) {
            imageInt += 1
            StartBtn.isHidden = false
            Next.isHidden = true
            countDown = 5
            dataLabel.text = "5"
            self.imageGallery()
            label.text = "\(imageInt) / 9"
            
        }
        
        func imageGallery() {
            if imageInt == 1 {
                imageview.image = UIImage (named: "ex1-cat3.png")
            
            }
            if imageInt == 2 {
                Judul.text = "Standing Forward Fold"
                imageview.image = UIImage (named: "ex2-cat3.png")
                Tutor.text = "Stand with your feet about six inches apart, fold your body, toward the ground or bend your arms and grab the opposite elbows above your head."
                Tutor.adjustsFontSizeToFitWidth = true
                Tutor2.text = "Exhale and lengthen down through the crown of your head"
                Tutor3.text = "Hold and hold for 60 seconds, shake it gently from one side to the other if desired."
                Tutor4.text = ""
            }
            if imageInt == 3 {
                Judul.text = "Lizard Pose"
                imageview.image = UIImage (named: "ex3-cat3.png")
                Tutor.text = "Starting with the dog facing down, step your right foot outside of your right hand and bend your knees, come into a lunge position, right thighs parallel to the floor, toes slightly out."
                Tutor2.text = " Come down to rest elbows on the ground. Keep neck and spine in line, and press left heel away, keeping hips square."
                Tutor.adjustsFontSizeToFitWidth = true
                Tutor3.text = "Hold for 15 seconds. Repeat on the left side."
                Tutor4.text = ""
            }
            if imageInt == 4 {
                Judul.text = "Up The Wall"
                imageview.image = UIImage (named: "ex4-cat3.png")
                Tutor.text = "Sit facing wall and lie onto your back."
                Tutor2.text = "place your buttocks as close to the wall as possible, lift your legs and lean your back against the wall, legs perpendicular."
                Tutor3.text = "Rest with your arms out to sides, palms up. Hold for 60 seconds. "
                Tutor4.text = ""
            }
            if imageInt == 5 {
            Judul.text = "Before-Bed Bridge"
            imageview.image = UIImage (named: "ex5-cat3.png")
            Tutor.text = "Lie faceup with knees bent, feet flat on floor, arms extended by sides, palms up."
            Tutor2.text = "Keeping shoulders down, engaging abs and press into heels to lift hips and back to form a diagonal line."
            Tutor3.text = "Hold for 60 seconds or 10 to 12 breaths"
           
            }
            if imageInt == 6 {
                Judul.text = "Seated Forward Fold"
                imageview.image = UIImage (named: "ex6-cat3.png")
              Tutor.text = "Sit down then, back straight, legs together and stretch out in front of you."
              Tutor2.text = "Flex feet (keep them active) and bend forward from hips, reach for toes with hands."
              Tutor3.text = "Hold on for 60 second"
              Tutor4.text = ""
       
            }
            if imageInt == 7 {
                Judul.text = "Seated Side Bend"
                imageview.image = UIImage (named: "ex7-cat3.png")
                Tutor.text = "Sit on a pillow, cross-legged position. Put your left hand on the floor, bend your left elbow. Stretch your right arm with your ears."
                Tutor2.text = "Lean to left, keeping butt on floor,shoulders down "
                Tutor.adjustsFontSizeToFitWidth = true
                Tutor3.text = "Hold on for 30 second and switch sides for 30 seconds"
                Tutor4.text = ""
             
                
            }
            if imageInt == 8 {
                       Judul.text = "Happy Baby"
                       imageview.image = UIImage (named: "ex8-cat3.png")
                       Tutor.text = "Lie on your back, lift legs and bend knees, feet flexed towards the ceiling."
                       Tutor2.text = "Hold each big toe with each hand and bend your knees toward the armpits. If you can, shake it from left to right."
                       Tutor2.adjustsFontSizeToFitWidth = true
                       Tutor3.text = "Hold for 60 Second"
                       Tutor4.text = ""
                    
                       
                   }
            if imageInt == 9 {
                       Judul.text = "Figure Four"
                       imageview.image = UIImage (named: "ex9-cat3.png")
                       Tutor.text = "Lie on your back with legs extended in front of you"
                       Tutor2.text = "Lift right leg, bend knee, and hug leg with arms into chest for five seconds."
                       Tutor3.adjustsFontSizeToFitWidth = true
                       Tutor3.text = "Lift your left leg straight up, bend your right knee and place your right ankle to the left. Move your hands behind your left foot and pull your left leg."
                       Tutor4.text = "Hold for 60 Second."
                       Next.isHidden = true
                       
                   }
        }
        
        @objc func countDownMethod(){
            countDown -= 1
            dataLabel.text = "\(countDown)"
            if dataLabel.text == "0" {
                timer.invalidate()
                Next.isHidden = false
              
                StartBtn.isHidden = true
                if imageInt == 9{
                    Finish.isHidden = false
                }
                
            }
        }
}

