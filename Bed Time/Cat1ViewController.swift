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
            label.text = "\(imageInt) / 5"
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
            label.text = "\(imageInt) / 5"
            
        }
        
        func imageGallery() {
            if imageInt == 1 {
                imageview.image = UIImage (named: "ex1-cat1.png")
            
            }
            if imageInt == 2 {
                Judul.text = "Spinal Twist"
                imageview.image = UIImage (named: "ex2-cat1.png")
                Tutor.text = "On your back, extend both arms outform your sides"
                Tutor2.adjustsFontSizeToFitWidth = true
                Tutor2.text = "Slowly cross your left leg over the right side of your body and allow it to fall naturally towards the floor."
                Tutor3.text = "For a deeper twist, turn your head to the left"
                Tutor4.text = "Repeat on the other side."
            }
            if imageInt == 3 {
                Judul.text = "Side Stretch"
                imageview.image = UIImage (named: "ex3-cat1.png")
                Tutor.text = "Extend your left arm above your head while seated"
                Tutor2.text = "Keep your left arm above your ear then place your right hand on the floor and lean to the right, holding the left arm"
                Tutor2.adjustsFontSizeToFitWidth = true
                Tutor3.text = "Hold for 30 second, then repeat on the other side for 30 second."
                Tutor4.text = ""
            }
            if imageInt == 4 {
                Judul.text = "Lunge"
                imageview.image = UIImage (named: "ex4-cat1.png")
                Tutor.text = "From a standing or kneeling position, place one foot in front of the other and bend your knees to lunge."
                Tutor2.text = "Allow your opposite knee to support some of your weight."
                Tutor3.text = "Concentrate on keeping your spine straight and chest open, then repeat on the other side."
                Tutor4.text = ""
            }
            if imageInt == 5 {
                Judul.text = "Butterfly Pose"
                imageview.image = UIImage (named: "ex5-cat1.png")
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
              
                StartBtn.isHidden = true
                if imageInt == 5{
                    Finish.isHidden = false
                }
                
            }
        }
}

