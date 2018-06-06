
//
//  SecondViewController.swift
//  Class0604(5)
//
//  Created by kimdaeman14 on 2018. 6. 4..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController {
    
    var changeButton = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
    let ud = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(changeButton)
        view.backgroundColor = .white
        changeButton.addTarget(self, action: #selector(returnToViewController), for: .touchUpInside)
    }
    
    @objc func returnToViewController(){
        let View = (presentingViewController as! ViewController)
        View.view.backgroundColor = UIColor.white
        View.count += 1
        
        ud.set(View.count, forKey: "count")
        let changecount = ud.object(forKey: "count")
        

        
        View.label.text = "\(changecount!)"
        
        
//        View.label.text = "\(View.count!)"
        //        let newcount = View.count + 1

        

        presentingViewController?.dismiss(animated: true)
    }
    
    deinit {
        print("secondview die")
    }
    
}
