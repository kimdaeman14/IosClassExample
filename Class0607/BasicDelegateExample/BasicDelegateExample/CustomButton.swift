//
//  CustomButton.swift
//  BasicDelegateExample
//
//  Created by giftbot on 2018. 6. 7..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit


protocol CustomButtonDelegate: class {
  func sayHello()
}

class CustomButton: UIButton {
  weak var delegateCustomButton: CustomButtonDelegate?
  
  override init(frame: CGRect) {
    super.init(frame: frame)

    setTitle("normal", for: .normal)
    setTitleColor(.black, for: .normal)
    backgroundColor = .orange
    addTarget(self, action: #selector(doSomething), for: .touchUpInside)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
    
//버튼을 클릭하면 doSomething 메소드를 실행하게 되어있는데, 정작 여기에는 뭔가 작동하는 로직이 없다.
  @objc func doSomething() {
    print("\n---------- [ before ] ----------")
    // do something
    
    //delegate가 CustomButtonDelegate타입이라고 해당 프로토콜에 있는 메소드를 꼭 필수로 써야되는 건 아닌가봐.
    //이거 주석걸고 실행하니까 에러안나고 돌아간다. 작동만 안할뿐이지.
    delegateCustomButton?.sayHello()
    
    // do something
    print("---------- [ after sayHello ] ----------")
  }
}
