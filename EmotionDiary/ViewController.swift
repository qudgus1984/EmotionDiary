//
//  ViewController.swift
//  EmotionDiary
//
//  Created by 이병현 on 2022/07/11.
//

import UIKit

var numArray: [Int] = [0,0,0,0,0,0,0,0,0]
class ViewController: UIViewController {
    
    // #imageLiteral
    
    @IBOutlet weak var emotionFirstButton: UIButton!
    
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
        button1Label.text = setUserNickname()
        
        view.backgroundColor = example().0

        super.viewDidLoad()
    }
    
    // 배경색, 레이블, 이미지
    func example() -> (UIColor, String, String) {
        
        let color: [UIColor] = [.yellow, .red, .blue]
        let image: [String] = ["sesac_smile6", "sesac_smile7", "sesac_smile8", "sesac_smile9"]
        
        return (color.randomElement()!, "고래밥", image.randomElement()!)
        
    }
    
    func setUserNickname() -> String {
        let nickname = ["고래밥", "칙촉", "격투가"]
        let select = nickname.randomElement()!
        
        return "저는 \(select)입니다."
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
        showActionSheetController()
    }
    
    @IBAction func button9Clicked(_ sender: UIButton) {
        numArray[8] += 1
        button9Label.text = "우울해\(numArray[8])"
        showAlertController()
    }
    
    func showAlertController() {
        
        //1. 흰 바탕 : UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "여기는 메시지가 들어갑니다", preferredStyle: .alert)
        
        //2. 버튼
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소버튼입니다.", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
        
        //3. 1+2
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(cancel)
        alert.addAction(ok)
        
        //4. present
        present(alert, animated: true, completion: nil)

    }
    func showActionSheetController() {
        
        //1. 흰 바탕 : UIAlertController
        let alert = UIAlertController(title: "타이틀", message: nil, preferredStyle: .actionSheet)
        
        //2. 버튼
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소버튼입니다.", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
        
        //3. 1+2
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(cancel)
        alert.addAction(ok)
        
        //4. present
        present(alert, animated: true, completion: nil)

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
