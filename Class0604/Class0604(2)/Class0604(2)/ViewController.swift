//
//  ViewController.swift
//  Class0604(2)
//
//  Created by kimdaeman14 on 2018. 6. 4..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //뷰컨트롤러 스토리보드상에 버튼을 누르면 SecondViewController로 이동하도록 하는 메소드
    @IBAction private func toSecondViewController(_ second : UIButton){
        //정확히는 모르겠지만, 왼쪽에보면 Main.storyboard를 인스턴스화 시키는 작업인듯?
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        //인스턴스화 시킨 스토리보드를, instantiateViewController 메소드를 이용해서
        //진짜 인스턴스화시키는 작업이고,, 진짜가짜의 의미는 잘 모르겠지만 ㅎㅎ
        //withIdentifier: 뒤의 부분이 연결할 스토리보드의 ID 부분임.
        let second = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        //present의 기능이 단어그대로 창을 띄워주는 기능이므로 present(second 해주고
        //animated 같은 경우는 안쓰면 먼가 스르르하는 느낌이 없어진다.
        present(second, animated: true)
    }
    
    //여기까지 한 작업이 해당 메소드를 만들어주는 작업이었고 이것과는 별개로 메인스토리보드로 가서
    //생성하 뷰컨트롤러의 이름과 ID를 SecondViewController로 설정해야 하고 드래그해서 만든
    //메소드를 선택, 연결해주어야 정상 작동함. 
    
    
   
    
}

