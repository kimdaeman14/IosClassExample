//
//  ViewController.swift
//  Class0529(1)
//
//  Created by kimdaeman14 on 2018. 5. 29..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let baseFrame = view.frame //색안넣고 CGRect위치 안잡아주려면 uiview 아니어도 되나보다.
        let blueView = perfectFrame(frame: view.frame)
        let redView = perfectFrame(frame: blueView.frame)
        let greenView = perfectFrame(frame: redView.frame)
        blueView.backgroundColor = .blue
        redView.backgroundColor = .red
        greenView.backgroundColor = .green
        view.addSubview(blueView) // (0.0)기준
        view.addSubview(redView)  // (15.15)기준에 30,30 더해서 45,45
        view.addSubview(greenView)
//        view 전체 색 투명도 키워드 alpha
//        blueView.alpha = 0.5
        redView.alpha = 0.5
//        greenView.alpha = 0.5
    }
    @objc func perfectFrame(frame: CGRect) -> UIView{
        let result = UIView(frame: CGRect(x: frame.minX + 30,
                                          y: frame.minY + 30,
                                          width: frame.width - 60,
                                          height: frame.height - 60))
        return result
    }
    
    
 
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

