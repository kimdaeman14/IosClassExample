//
//  ViewController.swift
//  Class0607(1)
//
//  Created by kimdaeman14 on 2018. 6. 7..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

//이프로토콜이있어. 클래스에만 적용이돼.
//그리고 얘는 viewFrameChanged 메소드가 있고 매개변수로 newFrame: CGRect 값이 들어가는 얘야.
protocol CustomViewDelegate: class {
    func viewFrameChanged(newFrame: CGRect)
}





// UIView 클래스가 하나 있어. 그리고
class CustomView : UIView {
//CustomViewDelegate 타입을 가진 변수를 하나 만들었고
    weak var delegate: CustomViewDelegate?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //delegate는 CustomViewDelegate 프로토콜을 준수하기때문에 다른건 몰라도 viewFrameChanged
        //가 있는건 안다.
        print("delegate : \(delegate)")
        delegate?.viewFrameChanged(newFrame: frame)
        
    }
}




class ViewController: UIViewController, CustomViewDelegate {
   
    let customView = CustomView(frame: CGRect(x: 50, y: 250, width: 200, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.backgroundColor = .green
        //커스텀뷰에서 어떤메서드를 실행시킬건데 어떠놈이올지 모르기때문에 그놈을 지정을해서
        //viewFrameChanged를 실행시키기위해서 self를 지정을 해줬고.
        customView.delegate = self //0x7fa6f9715110 얘주소가 이거래
        view.addSubview(customView)
    }

    
    //커스텀뷰가 실행이되면서 customView의 프레임값이 아래로 내려가고,
    //재는 다시 delegate?.viewFrameChanged(newFrame: frame)
    //일로가서 호출한다?
    func viewFrameChanged(newFrame: CGRect) {
        print("changed frame : \(newFrame)")
    }



}

