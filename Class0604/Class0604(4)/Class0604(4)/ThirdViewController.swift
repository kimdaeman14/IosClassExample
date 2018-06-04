//
//  ThirdViewController.swift
//  Class0604(4)
//
//  Created by kimdaeman14 on 2018. 6. 4..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    deinit{
        print("third die")
    }
    @IBAction private func returnToSecond(_:UIButton){
        
//        최대한간단히하면 요렇게 한다.
//        dismiss(animated: true)
        
//        그런데, present에도 종류가 있는데 이걸 찍어보자.
//        결과는 아래처럼 나온다. 즉,
        print(self.presentedViewController) //nil
        print(self.presentingViewController) //Optional(<Class0604_4_.SecondViewController: 0x7fa6c1d191d0>)
//        presented : 내가 띄우는 뷰컨트롤러
//        presenting : 나를 띄우는 뷰컨트롤러
//        라는 것을 알 수 있다.
        
//        따라서 정석적이며, swift에서 권장되는 표현은 dismiss(animated: true)가 아니라
//        presentingViewController?.dismiss(animated: true)
//        라고 볼 수 있다. 디이닛을 찍어보면 잘 닫힌다.
        
//        그리고 한방에 첫번째로 가고 싶다면 이런식으로 응용할 수 있겠다.
        presentingViewController?.presentingViewController?.dismiss(animated: true)
//        그러면 이것을 활용해서 데이터도 왔다갔다 할 수 있지 않을까? 다음 프로젝트를 통해 확인해보자.
        
        
        
        
    }

}
