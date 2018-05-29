//
//  ViewController.swift
//  Class0528(2)
//
//  Created by kimdaeman14 on 2018. 5. 29..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

var checkNum = 0

class FirstViewController: UIViewController {
    
    //버튼 선언하고 버튼 타입, 크기와 어디에 위치할지를 정해주는 부분
    var buttonType1 = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
    var buttonType2 = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 50))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view, typically from a nib.
        
        //버튼 1 생성
        buttonType1.setImage(UIImage(named: "push.jpeg"), for: .normal)
//        buttonType1.setTitle("click", for: .normal) //버튼1 제목지정
        buttonType1.backgroundColor = UIColor.black //버튼1 배경색지정
        //버튼1을 액션과 연결, 나 자신을 타겟으로해서 touchUpInside하면 -> buttonClicked 메소드 실행
        buttonType1.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        view.addSubview(buttonType1) // 이거 없으면 시뮬레이터에 버튼1 안보임.
        
        //버튼 2 생성
        buttonType2.setTitle("count", for: .normal)
        buttonType2.backgroundColor = UIColor.black
        view.addSubview(buttonType2)
        
        
    }

    //클릭하면 버튼1의 색이 바뀌는 기능을 하는 메소드
    @objc func buttonClicked(){
        print("===print buttontype1===")
        buttonType1.setTitle("pushed", for: .normal)
        buttonType1.backgroundColor = UIColor.blue
        buttonType1.setTitleColor(UIColor.red, for: .normal)
        checkNum += 1
        buttonType2.setTitle("\(checkNum)", for: .normal)
        print("checkNum는 \(checkNum)입니다")

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

