//
//  SecondViewController.swift
//  Class0604(5)
//
//  Created by kimdaeman14 on 2018. 6. 4..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController {

    var newlabel = UILabel(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(newlabel)
        view.backgroundColor = .white
        newlabel.textAlignment = NSTextAlignment.center
    }
    
    @objc func returnToViewController(){
        
        
        print(presentingViewController)
//        let count = 0
//        let View = ViewController()
//        View.label.text = "\(count+1)"
        presentingViewController?.dismiss(animated: true)
    }

}
