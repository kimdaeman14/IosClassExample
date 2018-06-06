//
//  SecondViewController.swift
//  Class0605(2)
//
//  Created by kimdaeman14 on 2018. 6. 5..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var changeButton = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
    let ud = UserDefaults.standard
    var countSecond = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(changeButton)
        view.backgroundColor = .white
        changeButton.addTarget(self, action: #selector(returnToViewController), for: .touchUpInside)
    }
    
    @objc func returnToViewController(){
//        let View = (presentingViewController as! ViewController)
        guard let viewPage = presentingViewController as? ViewController else {
            return
        }
        
        viewPage.view.backgroundColor = UIColor.white
        
        
        
        
        let precount = countSecond + 1 // 0+1
        ud.set(precount, forKey: "count") // 1
        let currentCount  = ud.object(forKey: "count") // 1
        viewPage.label.text = "\(currentCount!)" // 1
        
        presentingViewController?.dismiss(animated: true)
        
        
        
        
//        View.count += 1
//        print("View.count : \(View.count)")
        
//        let cc = count + 1
//        ud.set(cc, forKey: "count")
//        let p = ud.object(forKey: "count")
//        print(p,"ddd")
//        View.label.text = "\(p!)"
//        presentingViewController?.dismiss(animated: true)
//
//        let cc = count + 1
//        ud.set(cc, forKey: "count")
//        presentingViewController?.dismiss(animated: true){
//            let p = self.ud.object(forKey: "count")
//            print(p,"ddd")
//            //            View.label.text = "\(p!)"
//        }
    }
    
//    deinit {
//        print("secondview die")
//    }

}
