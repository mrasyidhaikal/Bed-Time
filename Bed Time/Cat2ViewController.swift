//
//  Cat1ViewController.swift
//  Bed Time
//
//  Created by Muhammad Rasyid khaikal on 26/05/20.
//  Copyright © 2020 Muhammad Rasyid khaikal. All rights reserved.
//

import UIKit

class Cat2ViewController: UIViewController {
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
    var countDown = 10
       var imageInt = 0
       var timer = Timer()
     override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            self.dataLabel.text = "\(countDown)"
            imageInt = 1
            label.text = "\(imageInt)/7"
        }

        @IBAction func startCount(_ sender: UIButton) {
            StartBtn.isHidden = true
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDownMethod), userInfo: nil, repeats: true)
        }
        
        @IBAction func next(_ sender: UIButton) {
            imageInt += 1
            StartBtn.isHidden = false
            Next.isHidden = true
            countDown = 10
            dataLabel.text = "10"
            self.imageGallery()
            label.text = "\(imageInt) / 7"
            
        }
        
        func imageGallery() {
            if imageInt == 1 {
                imageview.image = UIImage (named: "ex1-cat2.png")
            
            }
            if imageInt == 2 {
                Judul.text = "Neck Stretches"
                imageview.image = UIImage (named: "ex2-cat2.png")
                Tutor.text = "Gently bring your right ear towards your right shoulder, holding this position."
                Tutor2.adjustsFontSizeToFitWidth = true
                Tutor2.text = "Exhale as you cross your arms, placing your right arm over your left and your left over your right to give yourself a hug"
                Tutor3.text = "Breathe deeply as you use your hands to draw your shoulders forward"
                Tutor4.text = "To release, inhale to open your arms back open wide"
            }
            if imageInt == 3 {
                Judul.text = "Kneeling Lat Stretch"
                imageview.image = UIImage (named: "ex3-cat2.png")
                Tutor.text = "Come into a kneeling position in front of a chair, couch, or low table."
                Tutor2.text = "Check that your knees are directly under your hips. You can rest on a blanket or cushion for extra support."
                Tutor3.adjustsFontSizeToFitWidth = true
                Tutor3.text = "Lengthen your spine as you hinge at the hips to fold forward, put your forearms with palms facing together, hold "
                Tutor4.text = ""
            }
            if imageInt == 4 {
                Judul.text = "Child’s Pose"
                imageview.image = UIImage (named: "ex4-cat2.png")
                Tutor.text = "Come down on your knees, sitting back on your heels."
                Tutor2.text = "Hinge at your hips to fold forward and rest your forehead on the floor."
                Tutor3.text = "Extend your arms in front of you to support your neck or bring your arms alongside your body."
                Tutor4.text = "Breath deeply in while holding the pose."
            }
            if imageInt == 5 {
                Judul.text = "Low Lunge"
                imageview.image = UIImage (named: "ex5-cat2.png")
            Tutor.text = "put your right foot below your knee and your left leg extended back, keeping your knee on the floor."
            Tutor2.text = "put your hands to the floor beneath your shoulders, on your knees"
            Tutor3.text = "Breathe deeply, focusing on lengthening your spine and opening your chest."
            Tutor4.text = "Hold, then repeat on the opposite side."
            }
            if imageInt == 6 {
                Judul.text = "Seated Forward Bend"
                imageview.image = UIImage (named: "ex6-cat2.png")
              Tutor.text = "Sit down with your legs extended in front of you"
              Tutor2.text = "Engage your abdominal slightly to lengthen your spine, pressing your sit bones into the floor."
              Tutor3.text = "Hinge at your hips to fold forward, reaching out your arms in front of you."
              Tutor4.text = "Relax your head and tuck your chin into your chest and hold this pose."
       
            }
            if imageInt == 7 {
                Judul.text = "Legs Up The Wall"
                imageview.image = UIImage (named: "ex7-cat2.png")
                Tutor.text = "Sit with the right side of your body against a wall."
                Tutor2.text = "Lie on your back as you swing your legs up against the wall."
                Tutor3.adjustsFontSizeToFitWidth = true
                Tutor3.text = "Your hips can be up against the wall or a few inches away. Choose the distance that feels most comfortable."
                Tutor4.text = "Rest your arms in any comfortable position and hold this pose."
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
                if imageInt == 7{
                    Finish.isHidden = false
                }
                
            }
            if dataLabel.text == "5" {
                            playSound(sound: "CountDown", type: "mp3")
                       }
        }
}

