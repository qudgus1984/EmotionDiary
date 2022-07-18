//
//  SecondViewController.swift
//  EmotionDiary
//
//  Created by 이병현 on 2022/07/12.
//

import UIKit

var arrayNum = [0,0,0,0,0,0,0,0,0]

enum MusicType: Int {
    case all = 0
    case korea = 1
    case other = 2
}


class SecondViewController: UIViewController {

    @IBOutlet weak var buttonCount: UIButton!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentControlValueChanged(segmentControl)


    }
    
    @IBAction func segmentControlValueChanged(_ sender: UISegmentedControl) {
        
        if segmentControl.selectedSegmentIndex == MusicType.all.rawValue {
            
        } else if segmentControl.selectedSegmentIndex == MusicType.korea.rawValue {
            
        } else if segmentControl.selectedSegmentIndex == MusicType.other.rawValue {
            
        }
            
        
        
        
        
        
        if segmentControl.selectedSegmentIndex == 0 {
            resultLabel.text = "첫번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == 1 {
            resultLabel.text = "두번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == 2 {
            resultLabel.text = "세번째 세그먼트 선택"
        } else {
            resultLabel.text = "오류"
        }
        
    }
    
    @IBAction func arrayButton(_ sender: UIButton) {
        if sender.tag == 0 {
            arrayNum[sender.tag] += 1
            
        } else if sender.tag == 1 {
            arrayNum[sender.tag] += 1
        } else if sender.tag == 2 {
            arrayNum[sender.tag] += 1
        } else if sender.tag == 3 {
            arrayNum[sender.tag] += 1
        } else if sender.tag == 4 {
            arrayNum[sender.tag] += 1
        } else if sender.tag == 5 {
            arrayNum[sender.tag] += 1
        } else if sender.tag == 6 {
            arrayNum[sender.tag] += 1
        } else if sender.tag == 7 {
            arrayNum[sender.tag] += 1
        } else if sender.tag == 8 {
            arrayNum[sender.tag] += 1
        }
        
    }
    
    
    /// print(sender.tag, sender.currentTitle,  sender.currentImage)
    /// 버튼 아웃렛 변수 설정후, emotionButton.tag = 0
    /// var emotionArray = [0,0,0,0,0,0,0,0,0]
    /// emotionArray[sender.tag] += 1
    ///
    /// if sender.tag == 0 {
    ///     emotionArray[sender.tag] += 1
    /// } else if sender.tag == 1 {
    ///     emotionArray[sender.tag] += 1
    /// }
    ///
    /// emotionFirstLabel.text = "\(emotionArray[0])"
}
