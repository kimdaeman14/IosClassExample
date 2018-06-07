//
//  CustomView.swift
//  BasicDelegateExample
//
//  Created by giftbot on 2018. 6. 7..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit
//프로토콜 생성. 이 프로토콜은 클래스에만 적용가능하다.
//그리고 매개변수를 newFrame:CGRect되는 메소드 viewFrameChanged를 반드시 구현해야 한다.
protocol CustomViewDelegate: class {
  func viewFrameChanged(newFrame:CGRect)
}

//클래스 생성
class CustomView: UIView {
//변수 타입이 CustomViewDelegate이다. 그러면 해당 프로토콜의 메소드를 반드시 구현해줘야하나 ?
  weak var delegateCustomView: CustomViewDelegate?
  override func layoutSubviews() {
    super.layoutSubviews()
    print("delegate :", delegateCustomView)
    delegateCustomView?.viewFrameChanged(newFrame: frame)
  }
}





