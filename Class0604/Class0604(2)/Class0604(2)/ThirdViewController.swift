//
//  ThirdViewController.swift
//  Class0604(2)
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

    //버튼을 누르면 SecondViewController로 이동하도록 하는 메소드
    //특이점으로는 present할때는 매개변수를 직접사용해야 해서 ( _: UIButton)
    //앞의 매개변수를 적었는데, 여기같은 경우는 직접적으로 쓸필요가 없으니 _로 대체하였다.
    @IBAction private func returnToSecondViewController( _: UIButton){
        //present의 반대개념으로 띄워준걸 없애준다고 보면 됨.
        //마찬가지로 메소드를 만들고 나서 스토리보드에서 직접 어디로갈건지 선택해주어야함.
        dismiss(animated: true)
    }
    
    //스토리보드로만 만들게되면 생기는 문제점이 클릭을 할때마다 계~~속 창이 열리는거다.
    //그래서 그부분을 dismiss를 통해 해결했는데, 우리는 그걸 눈으로 확인을 못하니까.
    //deinit라는걸 선언하고 프린트를 찍어서 확인한다.
    //여기서 deinit은 일반적으로 클래스를 만들 때 init이 필수인것처럼 그것과 반대되는 개념이다.
    //클래스를 만들때 init을 호출한다면, 없앨때는 deinit을 호출하는 것이고
    //dismiss를 하면 자동으로 deinit이 되기때문에 굳이 안적어도 되지만, 여기선 확인하기위해 적었다.
    
    deinit {
        print("ThirdViewController end")
    }
    
}
