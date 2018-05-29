//
//  ViewController.swift
//  Class0529
//
//  Created by kimdaeman14 on 2018. 5. 29..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit



class FirstViewController: UIViewController  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //x,y가 0.0에서부터의 위치 width, height가 가로세로변
        print(view.frame.maxY)
        let blueView = UIView(frame: CGRect(x: 15,
                                            y: 15,
                                            width: view.frame.width - 30,
                                            height: 200))
        
        let redView = UIView(frame: CGRect(x: 15,
                                           y: view.frame.height - 15 - 200,
                                           width: view.frame.width - 30,
                                           height: 200))
        
        blueView.backgroundColor = UIColor.blue
        redView.backgroundColor = UIColor.red
        view.addSubview(blueView)
        view.addSubview(redView)

    
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

