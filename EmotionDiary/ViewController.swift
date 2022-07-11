//
//  ViewController.swift
//  EmotionDiary
//
//  Created by 이병현 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonClickCountLabel: UILabel!
    var num = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func buttonClicked(_ sender: UIButton) {
        num += 1
        buttonClickCountLabel.text = "버튼 클릭 수 : \(num)"
    }
}

