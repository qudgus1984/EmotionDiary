//
//  ViewController.swift
//  EmotionDiary
//
//  Created by 이병현 on 2022/07/11.
//

import UIKit

var numArray: [Int] = [0,0,0,0,0,0,0,0,0]
class ViewController: UIViewController {

    @IBOutlet weak var button1Label: UILabel!
    @IBOutlet weak var button2Label: UILabel!
    @IBOutlet weak var button3Label: UILabel!
    @IBOutlet weak var button4Label: UILabel!
    @IBOutlet weak var button5Label: UILabel!
    @IBOutlet weak var button6Label: UILabel!
    @IBOutlet weak var button7Label: UILabel!
    @IBOutlet weak var button8Label: UILabel!
    @IBOutlet weak var button9Label: UILabel!
    
    @IBOutlet weak var buttonClickCountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func button1Clicked(_ sender: UIButton) {
        numArray[0] += 1
        button1Label.text = "좋아해\(numArray[0])"
    }
   
    @IBAction func button2Clicked(_ sender: UIButton) {
        numArray[1] += 1
        button2Label.text = "사랑해\(numArray[1])"
    }
    
    @IBAction func button3Clicked(_ sender: UIButton) {
        numArray[2] += 1
        button3Label.text = "하트뿅\(numArray[2])"
    }
    
    @IBAction func button4Clicked(_ sender: UIButton) {
        numArray[3] += 1
        button4Label.text = "짜증나\(numArray[3])"
    }
    
    @IBAction func button5Clicked(_ sender: UIButton) {
        numArray[4] += 1
        button5Label.text = "멍-해\(numArray[4])"
    }
    
    @IBAction func button6Clicked(_ sender: UIButton) {
        numArray[5] += 1
        button6Label.text = "졸려어\(numArray[5])"
    }
    
    @IBAction func button7Clciked(_ sender: UIButton) {
        numArray[6] += 1
        button7Label.text = "땀삐질\(numArray[6])"
    }
    
    @IBAction func button8Clicked(_ sender: UIButton) {
        numArray[7] += 1
        button8Label.text = "속상해\(numArray[7])"
    }
    
    @IBAction func button9Clicked(_ sender: UIButton) {
        numArray[8] += 1
        button9Label.text = "우울해\(numArray[8])"
    }
    
    
}

