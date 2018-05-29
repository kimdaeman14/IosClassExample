//
//  ViewController.swift
//  Class0529(2)
//
//  Created by kimdaeman14 on 2018. 5. 29..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class ViewController : UIViewController {
    
    func createSubview(with frame: CGRect, color:UIColor) -> UIView {
        let view = UIView(frame: decreaseRectFrame(from: frame))
        view.backgroundColor = color
        return view
    }
    
    func decreaseRectFrame(from frame: CGRect) -> CGRect {
        return CGRect(x: frame.minX + 15, y: frame.origin.y + 15, width: frame.width-30, height: frame.height-30)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* 방법 1 : decreaseRectFrame 메소드를 생성해서 적용
        let baseFrame = view.frame //하얀프레임
        let blueView = UIView(frame: decreaseRectFrame(from: baseFrame))
        blueView.backgroundColor = UIColor.blue
        view.addSubview(blueView)
        print(blueView.frame)
        print(blueView.bounds)
        let RedView = UIView(frame: decreaseRectFrame(from: blueView.frame))
        RedView.backgroundColor = UIColor.red
        view.addSubview(RedView)
//        RedView.alpha = 0.5 //투명도
        let greenView = UIView(frame: decreaseRectFrame(from: RedView.frame))
        greenView.backgroundColor = UIColor.green
        view.addSubview(greenView)
        */
        
        // 방법 2 : createSubview 메소드
        let baseFrame = view.frame //하얀프레임
        let blueView = createSubview(with: baseFrame, color: .blue)
        view.addSubview(blueView)
        let redView = createSubview(with: blueView.frame, color: .red)
        view.addSubview(redView)
        let greenView = createSubview(with: redView.frame, color: .green)
        view.addSubview(greenView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

