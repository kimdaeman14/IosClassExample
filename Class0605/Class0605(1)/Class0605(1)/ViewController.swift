//
//  ViewController.swift
//  Class0605(1)
//
//  Created by kimdaeman14 on 2018. 6. 5..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

final class Count{
    static let shared = Count()
    var count = 0
}

class ViewController: UIViewController {

    var label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
    var button = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        view.addSubview(label)
        label.textAlignment = NSTextAlignment.center
        label.text = "\(Count.shared.count)"
        view.addSubview(button)
        button.backgroundColor = .black
        button.setTitle("click", for: .normal)
        button.addTarget(self, action: #selector(toSecondViewController), for: .touchUpInside)
    }
    
    @objc func toSecondViewController(){
        let SecondView = SecondViewController()
        present(SecondView, animated: true)
        print("will SecondViewController")
        SecondView.changeButton.setTitle("add count!!", for: .normal)
        SecondView.view.backgroundColor = UIColor.lightGray
        
    }
    

}

