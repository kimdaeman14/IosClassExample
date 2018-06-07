//
//  ViewController.swift
//  BasicDelegateExample
//
//  Created by giftbot on 2018. 6. 7..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CustomViewDelegate, CustomButtonDelegate {

  let button = CustomButton(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
  let customView = CustomView(frame: CGRect(x: 100, y: 250, width: 200, height: 100))

  override func viewDidLoad() {
    super.viewDidLoad()

    customView.delegateCustomView = self
    button.delegateCustomButton = self
//    그니까 우리가 하던대로면 여기서 셀프 어쩌구를 하는게 아니라
//    button.addTarget(self, action: #selector(sayHello), for: .touchUpInside)
//    이런 식으로 동작이 지겠지
//    근데 여기서 셀프를 먹여버린단 말이지,, 여기서 self값의 의미는 뭘까? print찍어보니까 이렇게 나오네.
//    Optional(<BasicDelegateExample.ViewController: 0x7ff532c0a880>)
//    즉, 이프로젝트이름.뷰컨트롤러의 주소값이 찍히는거야 셀프가
//    그 주소값을 customView.delegateCustomView에 넣어버리면
//    class CustomView의 delegateCustomView 변수로 들어갈테고
    customView.backgroundColor = .green
    view.addSubview(customView)
    view.addSubview(button)
  }

    //CustomViewDelegate 프로토콜 준수
  func viewFrameChanged(newFrame: CGRect) {
    print("changed Frame : \(newFrame)\n")
  }

    //CustomButtonDelegate 프로토콜 준수
  func sayHello() {
    print("Hello Swift")
    let random = arc4random_uniform(100)
    type(of: random) //UInt32
    customView.frame.size.height = CGFloat(random)
  }
}

