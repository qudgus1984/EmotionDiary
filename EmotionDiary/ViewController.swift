//
//  ViewController.swift
//  EmotionDiary
//
//  Created by 이병현 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    // count에 쓰기 위해 num배열 생성
    var numArray: [Int] = [0,0,0,0,0,0,0,0,0]
    
    // 각자의 emotion 배열 생성 후, 들어갈 text 저장
    var emotionArray: [String] = ["좋아해", "사랑해", "하트뿅", "짜증나", "머-엉해", "졸려어", "땀삐질", "속상해", "우울해"]
    
    // 각 버튼의 이미지를 넣은 outletCollection
    @IBOutlet var buttonImage: [UIButton]! // 이미지 넣을 배열
    @IBOutlet var buttonTitle: [UILabel]! // 이미지 이름 넣을 배열
    @IBOutlet weak var resetButton: UIButton! // 마음비우기 변수
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        imageSetting()
        
    }
    
    // 각 버튼 클릭시 title에 1씩 증가하도록 설정
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let currentCount = UserDefaults.standard.integer(forKey: "emotion\([sender.tag])")
        
        let updateCount = currentCount + 1
        UserDefaults.standard.set(updateCount, forKey: "emotion\([sender.tag])")
        
        buttonTitle[sender.tag].text = "\(emotionArray[sender.tag])\(UserDefaults.standard.integer(forKey: "emotion\([sender.tag])"))"
        
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) { // reset버튼에 Alert 추가
        resetAlert(title: "마음을 초기화하시겠습니까?", message: "진짜루우?")
    }
    
    
    
    func imageSetting() { // button에 이미지 추가 및 데이터 저장하기
        for i in 0...emotionArray.count-1 {
            buttonImage[i].tag = i
            buttonImage[buttonImage[i].tag].setImage(UIImage(named:"sesac_slime\(i+1).png"), for: .normal)
            
            buttonTitle[i].text = "\(emotionArray[i])\(UserDefaults.standard.integer(forKey: "emotion\([i])"))"
        }
    }
    
    // 스터디원님이 공유해주신 Alert 참고해서 Alert 버튼에 ok 버튼 클릭 시 데이터 초기화
    func resetAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "예", style: .destructive, handler: { (_) in
            for i in 0...8 {
                UserDefaults.standard.removeObject(forKey: "emotion\([i])")
                self.buttonTitle[i].text = "\(self.emotionArray[i])\(UserDefaults.standard.integer(forKey: "emotion\([i])"))"
            }
        })
        alert.addAction(ok)
        present(alert, animated: true, completion: .none)
    }
    
}
