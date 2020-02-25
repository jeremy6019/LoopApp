//
//  ViewController.swift
//  LoopApp
//
//  Created by 503 on 2020/02/25.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myView : UIView! // 이미지가 부착될 뷰
    @IBOutlet weak var t_col: UITextField!
    @IBOutlet weak var t_row: UITextField!
    
    
    @IBAction func btnCreate(_ sender: Any) {
       // 실행타임에 /UIImageView를 생성하자 동적 생성
        //col값 입력 받기
        var col = t_col.text!
        
        //row값 입력받기
        var row = t_row.text!
        
        
        for a in 1...Int(col)!{
            
            for i in 1...Int(row)!{
                var imgView =
                    UIImageView(image: UIImage(named:"soccer.jpg"))
                //크기 설정
                imgView.frame = CGRect(x: i*52, y: (52*a), width: 50, height: 50)
                //생성된 이미지뷰를 디폴트 부모뷰에 부착
                myView.addSubview(imgView)
            }
        }
    }
    
    @IBAction func btnRemove(_ sender: Any) {
        //기존 디폴트 뷰로부터 생성된 자식 뷰들을 제거
        
        //배열애 들어있?는 이미지 요소들을 하나씩 꺼내어
        // 그 이미지 뷰가 보유한 removeFrom/superView()를 호출하자
        for ojb in myView.subviews{
            ojb.removeFromSuperview()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //이미지가 부착될 뷰를 준비하자 '
        //프로그래밍 적으로 생성하자
        myView = UIView(frame:
            CGRect(x: 0, y: 200, width: 414, height: 500))
        myView.backgroundColor = UIColor.yellow
        // 부모뷰에 부착
        self.view.addSubview(myView)
    }


}

