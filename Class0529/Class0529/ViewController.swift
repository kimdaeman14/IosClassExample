//
//  ViewController.swift
//  Class0529
//
//  Created by kimdaeman14 on 2018. 5. 29..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

var count = 0

class FirstViewController: UIViewController  {
    
    var pushButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
    var countButton = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pushButton.setTitle("click", for: .normal)
        pushButton.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        pushButton.backgroundColor = UIColor.black
        view.addSubview(pushButton)
        
        countButton.backgroundColor = UIColor.black
        countButton.setTitle("will count", for: .normal)
        view.addSubview(countButton)
        
    }

    @objc func clicked() {
        print("====push button====")
        count += 1
        countButton.setTitle("\(count)", for: .normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

