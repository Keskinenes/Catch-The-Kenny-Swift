//
//  ViewController.swift
//  catchKenny
//
//  Created by Enes Keskin on 8/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    @IBOutlet weak var kenny1: UIImageView!
    @IBOutlet weak var kenny2: UIImageView!
    @IBOutlet weak var kenny3: UIImageView!
    @IBOutlet weak var kenny4: UIImageView!
    @IBOutlet weak var kenny5: UIImageView!
    @IBOutlet weak var kenny6: UIImageView!
    @IBOutlet weak var kenny7: UIImageView!
    @IBOutlet weak var kenny8: UIImageView!
    @IBOutlet weak var kenny9: UIImageView!
    @IBOutlet weak var kenny10: UIImageView!
    @IBOutlet weak var kenny11: UIImageView!
    @IBOutlet weak var kenny12: UIImageView!
    @IBOutlet weak var btnstart: UIButton!
    
    var selectedimage : UIImageView?
    var timer = Timer()
    var myTime = 0
    var imageArray = [UIImageView]()
    var score = 0
    var highScore = 0

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        myTime = 30
        timeLabel.text = "Time: \(myTime)"
       
        //Click image
        kenny1.isUserInteractionEnabled = true
        kenny2.isUserInteractionEnabled = true
        kenny3.isUserInteractionEnabled = true
        kenny4.isUserInteractionEnabled = true
        kenny5.isUserInteractionEnabled = true
        kenny6.isUserInteractionEnabled = true
        kenny7.isUserInteractionEnabled = true
        kenny8.isUserInteractionEnabled = true
        kenny9.isUserInteractionEnabled = true
        kenny10.isUserInteractionEnabled = true
        kenny11.isUserInteractionEnabled = true
        kenny12.isUserInteractionEnabled = true
        
        imageArray = [kenny1,kenny2,kenny3,kenny4,kenny5,kenny6,kenny7,kenny8,kenny9,kenny10,kenny11,kenny12]
    }
    
    
    @IBAction func btnStart(_ sender: Any) {
        kenny1.isHidden = true
        kenny2.isHidden = true
        kenny3.isHidden = true
        kenny4.isHidden = true
        kenny5.isHidden = true
        kenny6.isHidden = true
        kenny7.isHidden = true
        kenny8.isHidden = true
        kenny9.isHidden = true
        kenny10.isHidden = true
        kenny11.isHidden = true
        kenny12.isHidden = true
        
        let gesturerecognizer = UITapGestureRecognizer(target: self, action: #selector(findScore))
        selectedimage?.addGestureRecognizer(gesturerecognizer)
        
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerfunc), userInfo: nil, repeats: true)
        // btnstart.isEnabled = false -> butonun aktifliğini keser
        btnstart.isHidden = true
        
        
        
    }
    @objc func timerfunc(){
        
        selectedimage?.isHidden = true
        timeLabel.text = "Time: \(myTime)"
        myTime = myTime - 1
        imageArray.shuffle()
        selectedimage = imageArray[0]
        selectedimage?.isHidden = false
        let gesturerecognizer = UITapGestureRecognizer(target: self, action: #selector(findScore))
        selectedimage?.addGestureRecognizer(gesturerecognizer)
        
        if myTime == 0 {
            myTime = 30
            timeLabel.text = "Time: \(myTime)"
            btnstart.isHidden = false
            timer.invalidate()
          alertFunction(head: "Time", content: "Time up!")
        }
        
    }
    @objc func alertFunction(head : String, content : String){
           let warnMessage = UIAlertController(title: head, message: content, preferredStyle: UIAlertController.Style.alert)
           let okButton = UIAlertAction(title: "Okey", style: UIAlertAction.Style.default) { (UIAlertAction) in
           }
           warnMessage.addAction(okButton)
           self.present(warnMessage, animated: true, completion: nil)
       }
       
   
    @objc func findScore(){
        kenny1.isHidden = true
        kenny2.isHidden = true
        kenny3.isHidden = true
        kenny4.isHidden = true
        kenny5.isHidden = true
        kenny6.isHidden = true
        kenny7.isHidden = true
        kenny8.isHidden = true
        kenny9.isHidden = true
        kenny10.isHidden = true
        kenny11.isHidden = true
        kenny12.isHidden = true
        selectedimage?.isHidden = false
        score = score + 1
        selectedimage?.isHidden = true
        scoreLabel.text = "Score: \(score)"
        print("yakaladın")
    }
}
