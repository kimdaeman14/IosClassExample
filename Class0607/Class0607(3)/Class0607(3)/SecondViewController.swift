//
//  SecondViewController.swift
//  Class0607(3)
//
//  Created by kimdaeman14 on 2018. 6. 7..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var idLabel = UILabel(frame: CGRect(x: 35, y: 300, width: 255, height: 35))
    var passwordLabel = UILabel(frame: CGRect(x: 35, y: 400, width: 255, height: 35))

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(idLabel)
        view.addSubview(passwordLabel)

       
        
    }

}
