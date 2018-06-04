//
//  ViewController.swift
//  Class0604(2)
//
//  Created by kimdaeman14 on 2018. 6. 4..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//뷰컨트롤러는 이미 다만들어져있는거야. 이제 연결하는 작업을 해보자. 

    @IBAction private func nextButton(_ next : UIButton){
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let nextSecondView = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        present(nextSecondView, animated: true)
        
    }

}

