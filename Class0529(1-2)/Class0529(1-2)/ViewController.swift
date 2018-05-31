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
        
        let baseFrame = view.frame
        let blueView = colorCGRect(frameValue: plusMinusCGRect(frame: view.frame), color: .blue)
        let redView = colorCGRect(frameValue: plusMinusCGRect(frame: blueView.frame), color: .red)
        let greenView = colorCGRect(frameValue: plusMinusCGRect(frame: redView.frame), color: .green)
        view.addSubview(blueView)
        view.addSubview(redView)
        view.addSubview(greenView)
    }
    @objc func plusMinusCGRect(frame : CGRect)->CGRect{
        return CGRect(x: frame.minX + 30, y: frame.minY + 30, width: frame.width - 60, height: frame.height - 60)
    }
    @objc func colorCGRect(frameValue : CGRect, color : UIColor) -> UIView{
        let view = UIView(frame: frameValue)
        view.backgroundColor = color
        return view
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



